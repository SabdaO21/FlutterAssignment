import 'package:flutter/material.dart';

class PosterSection extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onBackPressed;

  const PosterSection({super.key, required this.imageUrl, required this.onBackPressed,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          imageUrl,
          height: 570,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          left: 16,
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: const Color(0xfff0bf4c)),
            onPressed: onBackPressed,
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: ElevatedButton.icon(
            onPressed: () {
            },
            icon: Icon(Icons.play_arrow),
            label: Text('Play'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}