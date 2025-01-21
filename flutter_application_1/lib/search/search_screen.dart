import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/basic_screen.dart';
import 'package:flutter_application_1/category/cartoon.dart';
import 'package:flutter_application_1/category/horror.dart';
import 'package:flutter_application_1/category/marvel.dart';
import 'package:flutter_application_1/detail/detail_screen.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});
  

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _searchResults = [];

  final List<Map<String, dynamic>> _movies = [
    {
      "title": "Captain Marvel",
      "image": "https://m.media-amazon.com/images/M/MV5BZDI1NGU2ODAtNzBiNy00MWY5LWIyMGEtZjUxZjUwZmZiNjBlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "widget": CaptainMarvel(),
    },
    {
      "title": "The Marvels",
      "image": "https://m.media-amazon.com/images/M/MV5BYzczOWM4MzItMWMyOS00ZDczLWIxMzctNzBmYTgzOTI1MzI3XkEyXkFqcGc@._V1_.jpg",
      "widget": CaptainMarvel2(),
    },
    {
      "title": "Mission: Impossible",
      "image": "https://m.media-amazon.com/images/M/MV5BN2U4OTdmM2QtZTkxYy00ZmQyLTg2N2UtMDdmMGJmNDhlZDU1XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "widget": MisssionImpossible(),
    },
    {
      "title": "Captain America: Civil War",
      "image": "https://m.media-amazon.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_.jpg",
      "widget": CaptainAmerica3(),
    },
    {
      "title": "Captain America: The Winter Soldier",
      "image": "https://m.media-amazon.com/images/M/MV5BNWY1NjFmNDItZDhmOC00NjI1LWE0ZDItMTM0MjBjZThiOTQ2XkEyXkFqcGc@._V1_.jpg",
      "widget": CaptainAmerica2(),
    },
    {
      "title": "Captain America: The First Avenger",
      "image": "https://m.media-amazon.com/images/M/MV5BNzUyM2YyY2MtNzNlMS00MWU5LTgxNjAtNzZlNmI2NjU2NDZlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "widget": CaptainAmerica(),
    },
    {
      "title": "Thor: Ragnarok",
      "image": "https://m.media-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_FMjpg_UX1000_.jpg",
      "widget": Thor3(),
    },
    {
      "title": "Black Widow",
      "image": "https://m.media-amazon.com/images/M/MV5BZTMyZTA0ZTItYjY3Yi00ODNjLWExYTgtYzgxZTk0NTg0Y2FlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "widget": BlackWidow(),
    },
    {
      "title": "Annabelle: Creation",
      "image": "https://m.media-amazon.com/images/M/MV5BMjA1MzIwMjMxNF5BMl5BanBnXkFtZTgwMDQ3NTc2MjI@._V1_.jpg",
      "widget": Annabelle2(),
    },
    {
      "title": "IT Chapter Two",
      "image": "https://m.media-amazon.com/images/M/MV5BYzUxM2VhOGItZTY2My00OTA4LWI4NjUtMDA5YWJjM2M2NDJjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "widget": It2(),
    },
    {
      "title": "Wonder Woman",
      "image": "https://m.media-amazon.com/images/M/MV5BMjEzYmZkNjktODBmYi00NzNkLWIzMjItMjhkMWZiZTZlN2MwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "widget": WonderWoman(),
    },
    {
      "title": "Aquaman",
      "image": "https://m.media-amazon.com/images/M/MV5BOTk5ODg0OTU5M15BMl5BanBnXkFtZTgwMDQ3MDY3NjM@._V1_FMjpg_UX1000_.jpg",
      "widget": Aquaman(),
    },
    {
      "title": "Spider-Man: No Way Home",
      "image": "https://m.media-amazon.com/images/M/MV5BMmFiZGZjMmEtMTA0Ni00MzA2LTljMTYtZGI2MGJmZWYzZTQ2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "widget": SpiderM3(),
    },
    {
      "title": "Doctor Strange in the multiverse of madness",
      "image": "https://rantingmedia.com/wp-content/uploads/2022/05/DoctorStrangeInTheMultiverseOfMadness_Teaser2_Printed_1-Sht_v4_lg.jpg",
      "widget": DoctorStrange2(),
    },
    {
      "title": "The Grinch (2018)",
      "image": "https://m.media-amazon.com/images/M/MV5BODQwOGFjNGEtMTg1ZS00MmY4LTg0NTctYjVlNTNjZjRmZTcxXkEyXkFqcGc@._V1_.jpg",
      "widget": Grinch(),
    },
    {
      "title": "Minions (2015)",
      "image": "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p11376954_p_v13_bc.jpg",
      "widget": Minions(),
    },
    {
      "title": "The Wild Robot",
      "image": "https://m.media-amazon.com/images/M/MV5BZjM2M2E3YzAtZDJjYy00MDhkLThiYmItOGZhNzQ3NTgyZmI0XkEyXkFqcGc@._V1_.jpg",
      "widget": WildRobot(),
    },
    {
      "title": "Kung Fu Panda 4",
      "image": "https://preview.redd.it/what-are-your-thoughts-on-kung-fu-panda-4-v0-h07dcvrojaqc1.png?auto=webp&s=ae41984cae30344f92d5e85a72e564c5afc58172",
      "widget": KungFu4(),
    },
    {
      "title": "Smile 2",
      "image": "https://resizing.flixster.com/gZtomMQp1wjKcCrcWSIBhY8EPBo=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzZlM2VjZGZjLWI3ZDEtNGFjYS05ODFjLTQwZGUyYmMwODcwYy5qcGc=",
      "widget": Smile2(),
    },
    {
      "title": "The Conjuring 2",
      "image": "https://m.media-amazon.com/images/M/MV5BOTRkMDlmZWEtMzQyYy00YzgyLTgwM2QtNzgxYmIwNGVlYmJlXkEyXkFqcGc@._V1_.jpg",
      "widget": Conjuring2(),
    },
    {
      "title": "Bad Boys for Life (2020)",
      "image": "https://m.media-amazon.com/images/M/MV5BYzM3ZTFmMTUtODAxNy00N2IxLWI2MGMtYTdmMDFhNmZkMDI3XkEyXkFqcGc@._V1_.jpg",
      "widget": BadBoy(),
    },
    {
      "title": "Will Smith: Gemini Man",
      "image": "https://m.media-amazon.com/images/M/MV5BMWY2ZmM4ZGEtODJjMC00MzY5LTk4ZmYtNzA5NmRhYzA5Y2EzXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "widget": GenimiMan(),
    },
    {
      "title": "John Wick: Chapter 4",
      "image": "https://m.media-amazon.com/images/M/MV5BY2Q2ZmI5ZjUtNWVhMC00YzJkLTlmYjMtY2RmZDhkNzEzYjZhXkEyXkFqcGc@._V1_.jpg",
      "widget": JohnWick(),
    },
    {
      "title": "The Mummy",
      "image": "https://m.media-amazon.com/images/M/MV5BMTkwMTgwODAxMl5BMl5BanBnXkFtZTgwNTEwNTQ3MDI@._V1_.jpg",
      "widget": Mummy(),
    },
    {
      "title": "Alpha",
      "image": "https://m.media-amazon.com/images/M/MV5BYmQ5ZDliM2EtYWVkNC00YzFhLTlhNGQtYzkwOTllZDZlZGZkXkEyXkFqcGc@._V1_.jpg",
      "widget": Alpha(),
    },
    {
      "title": "Venom The Last Dance",
      "image": "https://m.media-amazon.com/images/M/MV5BZDMyYWU4NzItZDY0MC00ODE2LTkyYTMtMzNkNDdmYmFhZDg0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "widget": Venom(),
    },
    {
      "title": "Journey 2",
      "image": "https://m.media-amazon.com/images/M/MV5BMjA5MTE1MjQyNV5BMl5BanBnXkFtZTcwODI4NDMwNw@@._V1_FMjpg_UX1000_.jpg",
      "widget": Journey2(),
    },
    {
      "title": "Dora and big Jungle Adventure",
      "image": "https://m.media-amazon.com/images/M/MV5BYjUwNjJmOGEtOGI0YS00ZjAyLWJjMTYtMjMzZjNhYWQxODY1XkEyXkFqcGc@._V1_.jpg",
      "widget": Dora(),
    },
    {
      "title": "Avengers: End Game",
      "image": "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg",
      "widget": AvengersEG(),
    },
  ];

  void _searchMovies(String query) {
    setState(() {
      if (query.isEmpty) {
        _searchResults = [];
      } else {
        _searchResults = _movies
            .where((movie) => movie["title"]
                .toLowerCase()
                .contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: isDarkMode ? const Color(0xfff0bf4c) :Color(0xFF2C2C2C)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeScreen()
              )
            );
          },),
        title: TextField(
          controller: _searchController,
          onChanged: _searchMovies,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[800],
            prefixIcon: Icon(Icons.search, color: isDarkMode ? const Color(0xfff0bf4c) : Color.fromARGB(255, 255, 255, 255)),
            hintText: "Search by title!",
            hintStyle: TextStyle(color: isDarkMode ? const Color(0xfff0bf4c) : Color.fromARGB(255, 255, 255, 255)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                _searchController.clear();
                _searchMovies("");
              },
              child: Icon(Icons.close, color: isDarkMode ? const Color(0xfff0bf4c) : Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          style: const TextStyle(color: Color(0xfff0bf4c)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_searchResults.isNotEmpty) ...[
                const SizedBox(height: 20),
                Text(
                  "Search Results",
                  style: TextStyle(
                      color: isDarkMode ? const Color(0xfff0bf4c) : Color(0xFF2C2C2C),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const SizedBox(height: 8),
                _buildSearchResults(),
              ],
              const SizedBox(height: 20),
              Text(
                "Category",
                style: TextStyle(
                    color: isDarkMode ? const Color(0xfff0bf4c) : Color(0xFF2C2C2C),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                children: [
                  _buildChip(context, 0, "Marvel Cinematic Universe"),
                  _buildChip(context, 1, "Horror"),
                  _buildChip(context, 2, "Cartoon"),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "Recommendations for you",
                style: TextStyle(
                    color: isDarkMode ? const Color(0xfff0bf4c) : Color(0xFF2C2C2C),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(height: 8),
              _buildMovieGrid(context, [
                "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg",
                "https://m.media-amazon.com/images/M/MV5BZDMyYWU4NzItZDY0MC00ODE2LTkyYTMtMzNkNDdmYmFhZDg0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
                "https://resizing.flixster.com/gZtomMQp1wjKcCrcWSIBhY8EPBo=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzZlM2VjZGZjLWI3ZDEtNGFjYS05ODFjLTQwZGUyYmMwODcwYy5qcGc=",
                "https://m.media-amazon.com/images/M/MV5BOTRkMDlmZWEtMzQyYy00YzgyLTgwM2QtNzgxYmIwNGVlYmJlXkEyXkFqcGc@._V1_.jpg",
                "https://m.media-amazon.com/images/M/MV5BYzUxM2VhOGItZTY2My00OTA4LWI4NjUtMDA5YWJjM2M2NDJjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
                "https://m.media-amazon.com/images/M/MV5BY2Q2ZmI5ZjUtNWVhMC00YzJkLTlmYjMtY2RmZDhkNzEzYjZhXkEyXkFqcGc@._V1_.jpg",
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChip(BuildContext context, int index, String label) {
    return Chip(
      label: GestureDetector(
        onTap: () {
          if (index == 0) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Marvel(),
              ),
            );
          } else if (index == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Horror(),
              ),
            );
          } else if (index == 2) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Cartoon(),
              ),
            );
          }
        },
        child: Text(label, style: const TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.grey[800],
      avatar: const Icon(Icons.access_time, color: Colors.white, size: 16),
    );
  }

  Widget _buildMovieGrid(BuildContext context, List<String> images) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                if (index == 0) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AvengersEG(),
                    ),
                  );
                } else if (index == 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Venom(),
                    ),
                  );
                } else if (index == 2) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Smile2(),
                    ),
                  );
                } else if (index == 3) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Conjuring2(),
                    ),
                  );
                } else if (index == 4) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => It2(),
                    ),
                  );
                } else if (index == 5) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => JohnWick(),
                    ),
                  );
                }
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(images[index], width: 120, fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSearchResults() {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          final result = _searchResults[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => result["widget"],
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(result["image"], width: 120, fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}
