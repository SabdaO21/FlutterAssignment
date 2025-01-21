import 'package:flutter/material.dart';
import 'package:flutter_application_1/setting/setting_screen.dart';

class SettingApp extends StatelessWidget {
  const SettingApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsScreen(),
    );
  }
}
