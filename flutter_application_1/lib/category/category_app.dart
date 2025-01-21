import 'package:flutter/material.dart';
import 'package:flutter_application_1/category/popular_screen.dart';


class CategoryApp extends StatelessWidget {
  const CategoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PopularScreen(),
    );
  }
}
