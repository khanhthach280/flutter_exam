import 'package:flutter/material.dart';
import 'package:flutter_application/domain/model/users_respond/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application/domain/repositories/implement.dart';
import 'package:flutter_application/user_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> _users = [];
  List<int> _bookmarkedUsers = [];
  int _page = 1;
  bool _isLoading = false;
  bool _hasMore = true;
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
          await UserRepository().fetchUsers(page: _page, pageSize: 10);
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

  Future<void> _loadMoreUsers() async {
    if (_isLoading || !_hasMore) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final response =
          await UserRepository().fetchUsers(page: _page + 1, pageSize: 15);

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
      _saveBookmarks();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StackOverflow Users'),
      ),
      body: Column(
        children: [
          Expanded(
            child: _users.isEmpty ? const Center(child: CircularProgressIndicator()) : ListView.builder(
              controller: _scrollController,
              itemCount: _users.length + (_hasMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == _users.length) {
                  return const Center(child: CircularProgressIndicator());
                }

                final user = _users[index];
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
