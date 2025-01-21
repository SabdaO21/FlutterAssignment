import 'package:flutter/material.dart';
import 'package:flutter_application_1/search/search_screen.dart';


class SearchApp extends StatelessWidget {
  const SearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MovieScreen(),
    );
  }
}
