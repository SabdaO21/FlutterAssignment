import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/basic_screen.dart';


class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
