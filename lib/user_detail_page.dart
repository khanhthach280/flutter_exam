import 'package:flutter/material.dart';

class UserDetailPage extends StatefulWidget {
  final int userId;
  final String? userName;

  const UserDetailPage({Key? key, required this.userId, this.userName})
      : super(key: key);

  @override
  _UserDetailPageState createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userName ?? ''),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue, // Màu xanh cho container
          child: Center(
            child: Text(
              'User ID: ${widget.userId}', // Hiển thị userId
              style: const TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
