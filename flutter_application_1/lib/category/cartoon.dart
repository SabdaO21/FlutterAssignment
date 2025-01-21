import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/detail_screen.dart';
import 'package:flutter_application_1/search/search_screen.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';

class Cartoon extends StatelessWidget {
  final List<String> movieImages = [
    'https://preview.redd.it/what-are-your-thoughts-on-kung-fu-panda-4-v0-h07dcvrojaqc1.png?auto=webp&s=ae41984cae30344f92d5e85a72e564c5afc58172',
    'https://m.media-amazon.com/images/M/MV5BZjM2M2E3YzAtZDJjYy00MDhkLThiYmItOGZhNzQ3NTgyZmI0XkEyXkFqcGc@._V1_.jpg',
    'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p11376954_p_v13_bc.jpg',
    'https://m.media-amazon.com/images/M/MV5BODQwOGFjNGEtMTg1ZS00MmY4LTg0NTctYjVlNTNjZjRmZTcxXkEyXkFqcGc@._V1_.jpg'
  ];

  Cartoon({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
        title: Text(
          'Animation',
          style: TextStyle(color: isDarkMode ? const Color(0xfff0bf4c) :Color(0xFF2C2C2C), fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: isDarkMode ? const Color(0xfff0bf4c) :Color(0xFF2C2C2C)),
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
                      builder: (context) => KungFu4(),
                    ),
                  );
                }
                else if (index == 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WildRobot(),
                    ),
                  );
                }
                else if (index == 2) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Minions(),
                    ),
                  );
                }
                else if (index == 2) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Grinch(),
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
