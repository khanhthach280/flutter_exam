import 'dart:convert'; // Để mã hóa và giải mã JSON
import 'package:flutter/material.dart';
import 'package:flutter_application/domain/model/users_respond/user.dart';
import 'package:flutter_application/domain/repositories/implement.dart';
import 'package:flutter_application/pages/user_detail_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key, required this.title});

  final String title;

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List<User> _users = [];
  List<User> _bookmarkedUserObjects =
      []; // Danh sách các đối tượng user đã bookmark
  int _page = 1;
  bool _isLoading = false;
  bool _hasMore = true;
  bool _showBookmarkedOnly =
      false; // Kiểm tra xem có hiển thị chỉ user đã bookmark không
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _loadBookmarks(); // Tải danh sách các user đã bookmark từ local storage
    _loadUsers(); // Tải danh sách user từ API
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent &&
          _hasMore) {
        _loadMoreUsers();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // Tải danh sách user từ API lần đầu tiên
  Future<void> _loadUsers() async {
    if (_isLoading) return;
    setState(() {
      _isLoading = true;
    });
    try {
      final response =
          await UserRepository().fetchUsers(page: _page, pageSize: 30);
      setState(() {
        _users = response.items;
        _hasMore = response.has_more;
      });
    } catch (e) {
      debugPrint('Error loading users: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // Tải thêm user khi cuộn đến cuối danh sách
  Future<void> _loadMoreUsers() async {
    if (_isLoading || !_hasMore) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final response =
          await UserRepository().fetchUsers(page: _page + 1, pageSize: 30);

      setState(() {
        _users = List.from(_users)..addAll(response.items);
        _page++;
        _hasMore = response.has_more;
      });
    } catch (e) {
      debugPrint('Error loading more users: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // Tải danh sách bookmarked từ SharedPreferences
  Future<void> _loadBookmarks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? bookmarkedUsersJson = prefs.getStringList('bookmarkedUsers');
    if (bookmarkedUsersJson != null) {
      setState(() {
        _bookmarkedUserObjects = bookmarkedUsersJson.map((userJson) {
          return userFromJson(userJson); // Chuyển JSON sang đối tượng User
        }).toList();
      });
    }
  }

  // Lưu danh sách bookmarked vào SharedPreferences
  Future<void> _saveBookmarks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> bookmarkedUsersJson = _bookmarkedUserObjects.map((user) {
      return userToJson(user); // Chuyển đối tượng User sang JSON
    }).toList();
    prefs.setStringList('bookmarkedUsers', bookmarkedUsersJson);
  }

  String userToJson(User user) {
    return json.encode(user.toJson());
  }

  // Chuyển chuỗi JSON thành đối tượng User
  User userFromJson(String jsonString) {
    return User.fromJson(json.decode(jsonString));
  }

  // Thêm hoặc xóa user khỏi danh sách bookmark
  void _toggleBookmark(User user) {
    setState(() {
      if (_bookmarkedUserObjects.any((u) => u.user_id == user.user_id)) {
        _bookmarkedUserObjects.removeWhere((u) => u.user_id == user.user_id);
      } else {
        _bookmarkedUserObjects.add(user);
      }
      _saveBookmarks(); // Lưu lại danh sách bookmarked vào local storage
    });
  }

  // Hàm chuyển đổi giữa chế độ hiển thị bookmark và all users
  void _toggleBookmarkView() {
    setState(() {
      _showBookmarkedOnly = !_showBookmarkedOnly;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StackOverflow Users'),
        actions: [
          IconButton(
            icon: Icon(
                _showBookmarkedOnly ? Icons.bookmark : Icons.bookmark_border),
            onPressed: _toggleBookmarkView, // Chuyển chế độ xem
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: (_users.isEmpty && !_showBookmarkedOnly)
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    controller: _scrollController,
                    itemCount:
                        (_showBookmarkedOnly ? _bookmarkedUserObjects : _users)
                                .length +
                            (_hasMore && !_showBookmarkedOnly ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (!_showBookmarkedOnly && index == _users.length) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      final user = _showBookmarkedOnly
                          ? _bookmarkedUserObjects[index]
                          : _users[index];

                      final isBookmarked = _bookmarkedUserObjects.any(
                          (bookmarkedUser) =>
                              bookmarkedUser.user_id == user.user_id);

                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserDetailPage(
                                userId: user.user_id,
                                userName: user.display_name,
                              ),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(user.profile_image),
                          ),
                          title: Text(user.display_name),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Reputation: ${user.reputation}'),
                              if (user.location != null &&
                                  user.location!.isNotEmpty)
                                Text('Location: ${user.location}'),
                            ],
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              isBookmarked
                                  ? Icons.bookmark
                                  : Icons.bookmark_border,
                              color: isBookmarked ? Colors.blue : null,
                            ),
                            onPressed: () {
                              _toggleBookmark(
                                  user); // Truyền toàn bộ đối tượng user vào hàm
                            },
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
