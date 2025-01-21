import 'package:flutter/material.dart';
import 'package:flutter_application_1/category/popular_screen.dart';
import 'package:flutter_application_1/detail/detail_screen.dart';
import 'dart:async';
import 'package:flutter_application_1/profile/profile_app.dart';
import 'package:flutter_application_1/search/search_screen.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:flutter_application_1/setting/setting_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = (_pageController.page!.toInt() + 1) % 4;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
        selectedItemColor: isDarkMode ? const Color(0xfff0bf4c) :Color(0xFF2C2C2C) ,
        unselectedItemColor: isDarkMode ? const Color.fromARGB(255, 243, 201, 105) :Color(0xFF757575),
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          if (index == 3) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfileApp()
              )
            );
          }
          else if (index == 2) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SettingsScreen()
              )
            );
          }
          else if (index == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MovieScreen()
              )
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Carousel
              SizedBox(
                height: 200,
                child: PageView(
                  controller: _pageController,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Example navigation on tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DoctorStrange2(),
                          ),
                        );
                      },
                      child: Image.network(
                        'https://expatcinemaprod.blob.core.windows.net/images/71a14950-e119-40bc-9381-827539149139.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Example navigation on tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => KungFu4(),
                          ),
                        );
                      },
                      child: Image.network(
                        'https://pbs.twimg.com/media/GKskV2obgAEyDRg.jpg:large',
                        fit: BoxFit.cover,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Example navigation on tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MisssionImpossible(),
                          ),
                        );
                      },
                      child: Image.network(
                        'https://thumbnails.cbsig.net/CBS_Production_Entertainment_VMS/2023/05/04/2202473539626/MIDR1_US_2023_Amazon_1920x1080_2538342_1920x1080.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Example navigation on tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => It2(),
                          ),
                        );
                      },
                      child: Image.network(
                        'https://assets-in.bmscdn.com/discovery-catalog/events/et00077370-venpdpqkpm-landscape.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Last Watched Section
              Text(
                "Last watched",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? const Color(0xfff0bf4c) : Color(0xFF2C2C2C),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the movie screen on tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DoctorStrange2(),
                          ),
                        );
                      },
                      child: buildMovieCard(
                        "Doctor Strange: Multiverse of Madness", 
                        "1:50:35", 
                        "2021", 
                        "https://expatcinemaprod.blob.core.windows.net/images/71a14950-e119-40bc-9381-827539149139.jpg"
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the movie screen on tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Thor3(),
                          ),
                        );
                      },
                      child: buildMovieCard(
                        "Thor: Ragnarok", 
                        "1:50:35", 
                        "2021", 
                        "https://pbs.twimg.com/media/Dd5htL1W0AEvCPD?format=jpg&name=4096x4096"
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the movie screen on tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => BlackWidow(),
                          ),
                        );
                      },
                      child: buildMovieCard(
                        "Black Widow", 
                        "2:00:00", 
                        "2021", 
                        "https://www.comicbookherald.com/wp-content/uploads/2021/07/black-widow-cast.jpg"
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Most Popular Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? const Color(0xfff0bf4c) : Color(0xFF2C2C2C),
                    ),
                  ),
                  IconButton(
                    icon: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 14,
                        color: isDarkMode ? const Color(0xfff0bf4c) : Color(0xFF2C2C2C),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PopularScreen()
                        )
                      );
                    },
                  ),
                ],
              ),
         
              const SizedBox(height: 16),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 3,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the movie screen on tap
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AvengersEG(),
                        ),
                      );
                    },
                    child: buildPopularMovieCard(
                        "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg"),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the movie screen on tap
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Venom(),
                        ),
                      );
                    },
                    child: buildPopularMovieCard(
                        "https://m.media-amazon.com/images/M/MV5BZDMyYWU4NzItZDY0MC00ODE2LTkyYTMtMzNkNDdmYmFhZDg0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg"),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the movie screen on tap
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Smile2(),
                        ),
                      );
                    },
                    child: buildPopularMovieCard(
                        "https://resizing.flixster.com/gZtomMQp1wjKcCrcWSIBhY8EPBo=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzZlM2VjZGZjLWI3ZDEtNGFjYS05ODFjLTQwZGUyYmMwODcwYy5qcGc="),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the movie screen on tap
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MisssionImpossible(),
                        ),
                      );
                    },
                    child: buildPopularMovieCard(
                        "https://m.media-amazon.com/images/M/MV5BN2U4OTdmM2QtZTkxYy00ZmQyLTg2N2UtMDdmMGJmNDhlZDU1XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg"),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the movie screen on tap
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Aquaman(),
                        ),
                      );
                    },
                    child: buildPopularMovieCard(
                        "https://m.media-amazon.com/images/M/MV5BOTk5ODg0OTU5M15BMl5BanBnXkFtZTgwMDQ3MDY3NjM@._V1_FMjpg_UX1000_.jpg"),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the movie screen on tap
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => It2(),
                        ),
                      );
                    },
                    child: buildPopularMovieCard(
                        "https://m.media-amazon.com/images/M/MV5BYzUxM2VhOGItZTY2My00OTA4LWI4NjUtMDA5YWJjM2M2NDJjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMovieCard(String title, String duration, String year, String imageUrl) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: isDarkMode ?const Color.fromARGB(255, 41, 41, 43) : Color.fromARGB(255, 105, 124, 153) ,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFf0bf4c),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100, // Adjust the height as per the requirement
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "$duration | $year",
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPopularMovieCard(String imageUrl) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
