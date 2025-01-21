import 'package:flutter/material.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';

class DescriptionSection extends StatelessWidget {
  final String description;
  final VoidCallback onMoreInfoPressed;

  const DescriptionSection({super.key, required this.description, required this.onMoreInfoPressed});

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
            description,
            style: TextStyle(color: isDarkMode ? Colors.white70 : Color(0xFF2C2C2C)),
          ),
          SizedBox(height: 8),
          TextButton(
            onPressed: onMoreInfoPressed,
            child: Text(
              'More info',
              style: TextStyle(color: isDarkMode ? const Color(0xfff0bf4c) : Color(0xFF2C2C2C)),
            ),
          ),
        ],
      ),
    );
  }
}