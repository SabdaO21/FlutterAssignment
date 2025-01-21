import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/detail_screen.dart';
import 'package:flutter_application_1/search/search_screen.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';

class Horror extends StatelessWidget {
  final List<String> movieImages = [
    'https://m.media-amazon.com/images/M/MV5BMTkwMTgwODAxMl5BMl5BanBnXkFtZTgwNTEwNTQ3MDI@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BOTRkMDlmZWEtMzQyYy00YzgyLTgwM2QtNzgxYmIwNGVlYmJlXkEyXkFqcGc@._V1_.jpg',
    'https://resizing.flixster.com/gZtomMQp1wjKcCrcWSIBhY8EPBo=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzZlM2VjZGZjLWI3ZDEtNGFjYS05ODFjLTQwZGUyYmMwODcwYy5qcGc=',
    'https://m.media-amazon.com/images/M/MV5BYzUxM2VhOGItZTY2My00OTA4LWI4NjUtMDA5YWJjM2M2NDJjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjA1MzIwMjMxNF5BMl5BanBnXkFtZTgwMDQ3NTc2MjI@._V1_.jpg',
  ];

  Horror({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
        title: Text(
          'Horror',
          style: TextStyle(color: isDarkMode ? const Color(0xfff0bf4c) :Color(0xFF2C2C2C) , fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: isDarkMode ? const Color(0xfff0bf4c) :Color(0xFF2C2C2C) ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MovieScreen()
              )
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: movieImages.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (index == 0) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Mummy(),
                    ),
                  );
                }
                else if (index == 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Conjuring2(),
                    ),
                  );
                }
                else if (index == 2) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Smile2(),
                    ),
                  );
                }
                else if (index == 3) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => It2(),
                    ),
                  );
                }
                else if (index == 4) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Annabelle2(),
                    ),
                  );
                }
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  movieImages[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
