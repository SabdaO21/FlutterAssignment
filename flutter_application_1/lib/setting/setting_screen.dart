import 'package:flutter/material.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    // Define light and dark mode colors
    final backgroundColor = isDarkMode ? const Color(0xFF000000) : const Color(0xFFBACAE1);
    final appBarColor = isDarkMode ? const Color(0xFF000000) : const Color(0xFFBACAE1);
    final fontColor = isDarkMode ? const Color(0xFFF0BF4C) : const Color(0xFF2C2C2C);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: fontColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Settings',
          style: TextStyle(color: fontColor),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        children: [
          // Dark mode toggle switch
          ListTile(
            title: Text(
              'Dark Mode',
              style: TextStyle(color: fontColor),
            ),
            trailing: Switch(
              value: isDarkMode,
              onChanged: (value) {
                themeProvider.setDarkMode(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
