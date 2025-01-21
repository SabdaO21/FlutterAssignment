import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/basic_screen.dart';
import 'package:flutter_application_1/detail/detail_screen.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';

class PopularScreen extends StatelessWidget {
  final List<String> movieImages = [
    'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BZDMyYWU4NzItZDY0MC00ODE2LTkyYTMtMzNkNDdmYmFhZDg0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://resizing.flixster.com/gZtomMQp1wjKcCrcWSIBhY8EPBo=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzZlM2VjZGZjLWI3ZDEtNGFjYS05ODFjLTQwZGUyYmMwODcwYy5qcGc=',
    'https://m.media-amazon.com/images/M/MV5BOTRkMDlmZWEtMzQyYy00YzgyLTgwM2QtNzgxYmIwNGVlYmJlXkEyXkFqcGc@._V1_.jpg',
    'https://rantingmedia.com/wp-content/uploads/2022/05/DoctorStrangeInTheMultiverseOfMadness_Teaser2_Printed_1-Sht_v4_lg.jpg',
    'https://m.media-amazon.com/images/M/MV5BYzUxM2VhOGItZTY2My00OTA4LWI4NjUtMDA5YWJjM2M2NDJjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjA1MzIwMjMxNF5BMl5BanBnXkFtZTgwMDQ3NTc2MjI@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BY2Q2ZmI5ZjUtNWVhMC00YzJkLTlmYjMtY2RmZDhkNzEzYjZhXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BZjM2M2E3YzAtZDJjYy00MDhkLThiYmItOGZhNzQ3NTgyZmI0XkEyXkFqcGc@._V1_.jpg',
    'https://preview.redd.it/what-are-your-thoughts-on-kung-fu-panda-4-v0-h07dcvrojaqc1.png?auto=webp&s=ae41984cae30344f92d5e85a72e564c5afc58172',
    'https://m.media-amazon.com/images/M/MV5BMmFiZGZjMmEtMTA0Ni00MzA2LTljMTYtZGI2MGJmZWYzZTQ2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjEzYmZkNjktODBmYi00NzNkLWIzMjItMjhkMWZiZTZlN2MwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
  ];

  PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
        title: Text(
          'Most Popular',
          style: TextStyle(color: isDarkMode ? const Color(0xfff0bf4c) :Color(0xFF2C2C2C), fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: isDarkMode ? const Color(0xfff0bf4c) :Color(0xFF2C2C2C)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeScreen()
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
                      builder: (context) => AvengersEG(),
                    ),
                  );
                }
                else if (index == 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Venom(),
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
                      builder: (context) => Conjuring2(),
                    ),
                  );
                }
                else if (index == 4) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DoctorStrange2(), 
                    ),
                  );
                }
                else if (index == 5) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => It2(),
                    ),
                  );
                }
                else if (index == 6) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Annabelle2(), 
                    ),
                  );
                }
                else if (index == 7) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => JohnWick(), 
                    ),
                  );
                }
                else if (index == 8) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WildRobot(), 
                    ),
                  );
                }
                else if (index == 9) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => KungFu4(), 
                    ),
                  );
                }
                else if (index == 10) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SpiderM3(), 
                    ),
                  );
                }
                else if (index == 11) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WonderWoman(), 
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
