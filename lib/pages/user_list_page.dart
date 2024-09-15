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
  List<User> _bookmarkedUserObjects = []; // Danh sách các đối tượng user đã bookmark
  List<int> _bookmarkedUsers = [];
  int _page = 1;
  bool _isLoading = false;
  bool _hasMore = true;
  bool _showBookmarkedOnly = false; // Kiểm tra xem có hiển thị chỉ user đã bookmark không
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _loadBookmarks();
    _loadUsers();
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
        _bookmarkedUserObjects = _users.where((user) => _bookmarkedUsers.contains(user.user_id)).toList();
      });
    } catch (e) {
      debugPrint('Error loading users: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

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
        _bookmarkedUserObjects = _users.where((user) => _bookmarkedUsers.contains(user.user_id)).toList();
      });
    } catch (e) {
      debugPrint('Error loading more users: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _loadBookmarks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _bookmarkedUsers = prefs
              .getStringList('bookmarkedUsers')
              ?.map((e) => int.parse(e))
              .toList() ??
          [];
    });
  }

  Future<void> _saveBookmarks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList(
        'bookmarkedUsers', _bookmarkedUsers.map((e) => e.toString()).toList());
  }

  void _toggleBookmark(int userId) {
    setState(() {
      if (_bookmarkedUsers.contains(userId)) {
        _bookmarkedUsers.remove(userId);
      } else {
        _bookmarkedUsers.add(userId);
      }
      _bookmarkedUserObjects = _users.where((user) => _bookmarkedUsers.contains(user.user_id)).toList();
      _saveBookmarks();
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
            icon: Icon(_showBookmarkedOnly ? Icons.bookmark : Icons.bookmark_border),
            onPressed: _toggleBookmarkView, // Chuyển chế độ xem
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _users.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    controller: _scrollController,
                    itemCount: (_showBookmarkedOnly ? _bookmarkedUserObjects : _users).length + (_hasMore && !_showBookmarkedOnly ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (!_showBookmarkedOnly && index == _users.length) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      final user = _showBookmarkedOnly ? _bookmarkedUserObjects[index] : _users[index];
                      final isBookmarked = _bookmarkedUsers.contains(user.user_id);

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
                              if (user.location != null && user.location!.isNotEmpty)
                                Text('Location: ${user.location}'),
                            ],
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                              color: isBookmarked ? Colors.blue : null,
                            ),
                            onPressed: () {
                              _toggleBookmark(user.user_id);
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
