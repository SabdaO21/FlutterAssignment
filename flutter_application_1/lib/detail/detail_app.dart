import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/detail_screen.dart';


class DetailApp extends StatelessWidget {
  const DetailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AvengersEG()
    );
  }
}