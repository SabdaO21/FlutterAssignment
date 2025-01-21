import 'package:flutter/material.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';

class TitleAndGenres extends StatelessWidget {
  final String title;
  final List<String> genres;

  const TitleAndGenres({super.key, required this.title, required this.genres});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: isDarkMode ? Color(0xfff0bf4c) : Color(0xFF2C2C2C),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: genres
                .map((genre) => Text(
                      genre,
                      style: TextStyle(color: Colors.white60),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}