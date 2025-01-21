import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/detail_screen.dart';
import 'package:flutter_application_1/search/search_screen.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';

class Marvel extends StatelessWidget {
  final List<String> movieImages = [
    'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BZDMyYWU4NzItZDY0MC00ODE2LTkyYTMtMzNkNDdmYmFhZDg0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://rantingmedia.com/wp-content/uploads/2022/05/DoctorStrangeInTheMultiverseOfMadness_Teaser2_Printed_1-Sht_v4_lg.jpg',
    'https://m.media-amazon.com/images/M/MV5BMmFiZGZjMmEtMTA0Ni00MzA2LTljMTYtZGI2MGJmZWYzZTQ2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BZTMyZTA0ZTItYjY3Yi00ODNjLWExYTgtYzgxZTk0NTg0Y2FlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BNzUyM2YyY2MtNzNlMS00MWU5LTgxNjAtNzZlNmI2NjU2NDZlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BNWY1NjFmNDItZDhmOC00NjI1LWE0ZDItMTM0MjBjZThiOTQ2XkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BZDI1NGU2ODAtNzBiNy00MWY5LWIyMGEtZjUxZjUwZmZiNjBlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BYzczOWM4MzItMWMyOS00ZDczLWIxMzctNzBmYTgzOTI1MzI3XkEyXkFqcGc@._V1_.jpg',
  ];

  Marvel({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
        title: Text(
          'Marvel',
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
                      builder: (context) => DoctorStrange2(),
                    ),
                  );
                }
                else if (index == 3) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SpiderM3(),
                    ),
                  );
                }
                else if (index == 4) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Thor3(), 
                    ),
                  );
                }
                else if (index == 5) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BlackWidow(),
                    ),
                  );
                }
                else if (index == 6) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CaptainAmerica(),
                    ),
                  );
                }
                else if (index == 7) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CaptainAmerica2(),
                    ),
                  );
                }
                else if (index == 8) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CaptainAmerica3(),
                    ),
                  );
                }
                else if (index == 9) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CaptainMarvel(),
                    ),
                  );
                }
                else if (index == 10) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CaptainMarvel2(),
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
