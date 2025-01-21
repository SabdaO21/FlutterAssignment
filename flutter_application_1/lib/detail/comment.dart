import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';

class CommentSection extends StatefulWidget {
  final String movieId;

  const CommentSection({super.key, required this.movieId});

  @override
  _CommentSectionState createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  final TextEditingController _commentController = TextEditingController();
  double _currentRating = 0.0;
  List<Map<String, dynamic>> _comments = [];

  @override
  void initState() {
    super.initState();
    _loadComments();
  }

  Future<void> _loadComments() async {
    final prefs = await SharedPreferences.getInstance();
    final String? commentsJson = prefs.getString('comments_${widget.movieId}');

    if (commentsJson != null) {
      setState(() {
        _comments = List<Map<String, dynamic>>.from(jsonDecode(commentsJson));
      });
    }
  }

  Future<void> _saveComments() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('comments_${widget.movieId}', jsonEncode(_comments));
  }

  void _addComment() {
    if (_commentController.text.isNotEmpty) {
      setState(() {
        _comments.add({
          'username': "Admin",
          'text': _commentController.text,
          'rating': _currentRating.toInt(),
        });
        _commentController.clear();
        _currentRating = 0.0;
      });
      _saveComments();
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Comments", style: TextStyle(color: isDarkMode ? Color(0xfff0bf4c) : Color(0xFF2C2C2C), fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Column(
            children: _comments.map((comment) => _buildCommentTile(comment)).toList(),
          ),
          SizedBox(height: 16),
          TextField(
            controller: _commentController,
            decoration: InputDecoration(
              hintText: "Write a comment...",
              hintStyle: TextStyle(color: isDarkMode ? Colors.white70 : Color(0xFF2C2C2C)),
              filled: true,
              fillColor: isDarkMode ? Colors.grey[900] : Color.fromARGB(255, 134, 173, 226),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
            style: TextStyle(color: isDarkMode ? Colors.white70 : Color(0xFF2C2C2C)),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Slider(
                  value: _currentRating,
                  onChanged: (newRating) {
                    setState(() {
                      _currentRating = newRating;
                    });
                  },
                  min: 0,
                  max: 5,
                  divisions: 5,
                  label: _currentRating.toString(),
                  activeColor: Colors.amber,
                  inactiveColor: Colors.grey,
                ),
              ),
              Text("${_currentRating.toInt()}/5", style: TextStyle(color: Colors.white)),
            ],
          ),
          ElevatedButton(
            onPressed: _addComment,
            style: ElevatedButton.styleFrom(backgroundColor: isDarkMode ? Color(0xfff0bf4c) : Color.fromARGB(255, 119, 163, 224)),
            child: Text("Submit", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentTile(Map<String, dynamic> comment) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Card(
      color: isDarkMode ? Colors.grey[900] : Color.fromARGB(255, 134, 173, 226),
      child: ListTile(
        leading: Icon(Icons.person, color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
        title: Text(comment['username'], style: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C), fontWeight: FontWeight.bold)),
        subtitle: Text(comment['text'], style: TextStyle(color: isDarkMode ? Colors.white70 : Color.fromARGB(255, 63, 63, 63))),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            comment['rating'],
            (index) => Icon(Icons.star, color: Colors.amber, size: 18),
          ),
        ),
      ),
    );
  }
}
