import 'package:flutter/material.dart';
import 'package:flutter_application/domain/model/user_detail_respond/reputation_history.dart';
import 'package:flutter_application/domain/repositories/implement.dart';
import 'package:intl/intl.dart';

class UserDetailPage extends StatefulWidget {
  final int userId;
  final String? userName;

  const UserDetailPage({super.key, required this.userId, this.userName});

  @override
  // ignore: library_private_types_in_public_api
  _UserDetailPageState createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  List<ReputationHistory> _reputationHistory = [];
  int _page = 1;
  bool _isLoading = false;
  bool _hasMore = true; // Kiểm tra có còn dữ liệu để tải không
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _loadReputationHistory(); // Tải lịch sử danh tiếng lần đầu tiên
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent &&
          _hasMore) {
        _loadMoreReputationHistory(); // Tải thêm khi cuộn đến cuối danh sách
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // Hàm format ngày
  String formatDate(int timestamp) {
    final DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('dd-MM-yyyy HH:mm').format(date);
  }

  // Hàm tải lịch sử danh tiếng lần đầu tiên
  Future<void> _loadReputationHistory() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final response = await UserRepository().fetchUserReputationHistory(
        userId: widget.userId,
        page: _page,
        pageSize: 10,
      );
      setState(() {
        _reputationHistory = response.items;
        _hasMore = response.has_more; // Kiểm tra có còn dữ liệu để tải không
      });
    } catch (e) {
      debugPrint('Error loading reputation history: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // Hàm tải thêm lịch sử danh tiếng khi cuộn đến cuối
  Future<void> _loadMoreReputationHistory() async {
    if (_isLoading || !_hasMore) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final response = await UserRepository().fetchUserReputationHistory(
        userId: widget.userId,
        page: _page + 1,
        pageSize: 10,
      );
      setState(() {
        _reputationHistory = List.from(_reputationHistory)
          ..addAll(response.items);
        _page++;
        _hasMore = response.has_more;
      });
    } catch (e) {
      debugPrint('Error loading more reputation history: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userName ?? 'User Detail'),
      ),
      body: Column(
        children: [
          Expanded(
            child: _reputationHistory.isEmpty
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    ),
                  )
                : ListView.builder(
                    controller: _scrollController,
                    itemCount: _reputationHistory.length + (_hasMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == _reputationHistory.length) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }

                      final reputation = _reputationHistory[index];
                      return ListTile(
                        leading: const Icon(Icons.star, color: Colors.blue),
                        title: Text('Change: ${reputation.reputation_change}'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Type: ${reputation.reputation_history_type}'),
                            Text(
                                'Created At: ${formatDate(reputation.creation_date)}'),
                          ],
                        ),
                        trailing: Text('Post ID: ${reputation.post_id}'),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
