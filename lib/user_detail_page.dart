import 'package:flutter/material.dart';
import 'package:flutter_application/domain/model/user_detail_respond/user_detail_response.dart';
import 'package:flutter_application/domain/repositories/implement.dart';
import 'package:intl/intl.dart';

class UserDetailPage extends StatefulWidget {
  final int userId;
  final String? userName;

  const UserDetailPage({Key? key, required this.userId, this.userName})
      : super(key: key);

  @override
  _UserDetailPageState createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  late Future<UserDetailResponse> _userDetailFuture;

  @override
  void initState() {
    super.initState();
    _userDetailFuture = UserRepository().fetchUserReputationHistory(userId: widget.userId);
  }

  String formatDate(int timestamp) {
    final DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('dd-MM-yyyy HH:mm').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userName ?? 'User Detail'),
      ),
      body: FutureBuilder<UserDetailResponse>(
        future: _userDetailFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final userDetail = snapshot.data!;
            return ListView.builder(
              itemCount: userDetail.items.length,
              itemBuilder: (context, index) {
                final reputation = userDetail.items[index];
                return ListTile(
                  leading: const Icon(Icons.star, color: Colors.blue),
                  title: Text('Change: ${reputation.reputation_change}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Type: ${reputation.reputation_history_type}'),
                      Text('Created At: ${formatDate(reputation.creation_date)}'), // Thêm Created At
                    ],
                  ),
                  trailing: Text('Post ID: ${reputation.post_id}'),
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
