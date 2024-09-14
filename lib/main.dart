import 'package:flutter/material.dart';
import 'package:flutter_application/domain/repositories/implement.dart';
import 'package:flutter_application/domain/model/users_respond/user_response.dart';
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
  late Future<UserResponse> _userResponse;
  final List<int> _bookmarkedUsers = []; // Danh sách người dùng được đánh dấu

  @override
  void initState() {
    super.initState();
    _userResponse = UserRepository().fetchUsers();
  }

  // Hàm để đánh dấu hoặc bỏ đánh dấu người dùng
  void _toggleBookmark(int userId) {
    setState(() {
      if (_bookmarkedUsers.contains(userId)) {
        _bookmarkedUsers.remove(userId);
      } else {
        _bookmarkedUsers.add(userId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StackOverflow Users'),
      ),
      body: FutureBuilder<UserResponse>(
        future: _userResponse,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final users = snapshot.data!.items;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                final isBookmarked = _bookmarkedUsers.contains(user.user_id); // Kiểm tra người dùng có được đánh dấu không

                return InkWell(
                  onTap: () {
                    print('khanh ============== ${user.user_id}');
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
                        if (user.reputation_change_year != null)
                          Text('Reputation Change Year: ${user.reputation_change_year}'),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                        color: isBookmarked ? Colors.blue : null,
                      ),
                      onPressed: () {
                        _toggleBookmark(user.user_id); // Đánh dấu hoặc bỏ đánh dấu
                      },
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
