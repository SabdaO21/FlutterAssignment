import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/comment.dart';
import 'package:flutter_application_1/detail/description.dart';
import 'package:flutter_application_1/detail/poster.dart';
import 'package:flutter_application_1/detail/title.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';

class AvengersEG extends StatelessWidget {
  const AvengersEG({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // Poster Section
            PosterSection(
              imageUrl:
                'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg',
              onBackPressed: () {
              Navigator.of(context).pop();
              },
            ),
            SizedBox(height: 16),
          // Title and Genres Section
            TitleAndGenres(
              title: 'Avengers: End Game',
              genres: ['Space Sci-fi', 'Superhero', 'Action', 'Adventure'],
            ),
            SizedBox(height: 16),
          // Description Section
            DescriptionSection(
              description:
                'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.',
              onMoreInfoPressed: () {
              // Add more info logic
              },
            ),
            const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "avengers_endgame"),
          ],
        ),
      ),
    );
  }
}

class Dora extends StatelessWidget {
  const Dora({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
                'https://m.media-amazon.com/images/M/MV5BYjUwNjJmOGEtOGI0YS00ZjAyLWJjMTYtMjMzZjNhYWQxODY1XkEyXkFqcGc@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Dora and big Jungle Adventure ',
            genres: ['Adventure', 'Fantasy', 'Action', 'Family'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
                  'Dora and the Big Jungle Adventure follows Dora, Boots, and their friends as they embark on an exciting journey through the jungle to help the adorable Diego save Baby Jaguar. Along the way, they face challenges, solve puzzles, and teach valuable lessons about teamwork, problem-solving, and the joy of exploration. With catchy songs, interactive moments, and vibrant visuals, the adventure is a fun-filled learning experience that engages young audiences while highlighting friendship and perseverance.', 
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
          CommentSection(movieId: "Dora"),
        ],
      ),
    ),
    );
  }
}

class Journey2 extends StatelessWidget {
  const Journey2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
                'https://m.media-amazon.com/images/M/MV5BMjA5MTE1MjQyNV5BMl5BanBnXkFtZTcwODI4NDMwNw@@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Journey 2',
            genres: ['Comedy','Adventure', 'Fantasy', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
                  'Sean Anderson partners with his moms husband on a mission to find his grandfather, who is thought to be missing on a mythical island.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Journey2"),
        ],
      ),
    ),
    );
  }
}

class Venom extends StatelessWidget {
  const Venom({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
                'https://m.media-amazon.com/images/M/MV5BZDMyYWU4NzItZDY0MC00ODE2LTkyYTMtMzNkNDdmYmFhZDg0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Venom The Last Dance',
            genres: ['Action','Superhero', 'Sci-fi', 'Adventure'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
                    'Eddie Brock and Venom must make a devastating decision as they' ' ' 'are pursued by a mysterious military man and alien monsters from Venom' 's home world.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Venom"),
        ],
      ),
    ),
    );
  }
}

class Alpha extends StatelessWidget {
  const Alpha({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
                'https://m.media-amazon.com/images/M/MV5BYmQ5ZDliM2EtYWVkNC00YzFhLTlhNGQtYzkwOTllZDZlZGZkXkEyXkFqcGc@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Alpha',
            genres: ['Action','Drama', 'Adventure'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
                  'Set during the last Ice Age, a young hunter named Keda (Kodi Smit-McPhee) is injured and left for dead after a bison hunt. Struggling to survive, he befriends an injured wolf, forming a bond that changes the course of human and canine history. Together, they brave the harsh elements to find their way home.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Alpha"),
        ],
      ),
    ),
    );
  }
}

class Mummy extends StatelessWidget {
  const Mummy({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
                'https://m.media-amazon.com/images/M/MV5BMTkwMTgwODAxMl5BMl5BanBnXkFtZTgwNTEwNTQ3MDI@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'The Mummy',
            genres: ['Action', 'Adventure', 'Horror', 'Thriller'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
                  'An ancient Egyptian princess is awakened from her crypt beneath the desert, bringing with her malevolence grown over millennia and terrors that defy human comprehension.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Mummy"),
        ],
      ),
    ),
    );
  }
}

class JohnWick extends StatelessWidget {
  const JohnWick({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
                'https://m.media-amazon.com/images/M/MV5BY2Q2ZmI5ZjUtNWVhMC00YzJkLTlmYjMtY2RmZDhkNzEzYjZhXkEyXkFqcGc@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'John Wick: Chapter 4',
            genres: ['Action', 'Crime', 'Thriller'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
                  'John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Johnwick4"),
        ],
      ),
    ),
    );
  }
}

class GenimiMan extends StatelessWidget {
  const GenimiMan({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
                'https://m.media-amazon.com/images/M/MV5BMWY2ZmM4ZGEtODJjMC00MzY5LTk4ZmYtNzA5NmRhYzA5Y2EzXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Will Smith: Gemini Man',
            genres: ['Action', 'Crime', 'Sci-fi', 'Thriller'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
                  'Gemini Man (2019) is a sci-fi action thriller starring Will Smith as Henry Brogan, a highly skilled but aging assassin who decides to retire. However, he finds himself hunted by a younger clone of himself, codenamed "Junior," created by a shadowy government agency. As Henry tries to uncover the truth behind the conspiracy, he faces intense moral and physical challenges, leading to a showdown between him and his clone. Directed by Ang Lee, the film features cutting-edge visual effects and explores themes of identity, redemption, and the ethics of cloning.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "GeminiMan"),
        ],
      ),
    ),
    );
  }
}

class BadBoy extends StatelessWidget {
  const BadBoy({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
                'https://m.media-amazon.com/images/M/MV5BYzM3ZTFmMTUtODAxNy00N2IxLWI2MGMtYTdmMDFhNmZkMDI3XkEyXkFqcGc@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Bad Boys for Life (2020)',
            genres: ['Action', 'Crime', 'Comedy', 'Thriller'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
                  'Miami detectives Mike Lowrey and Marcus Burnett must face off against a mother-and-son pair of drug lords who wreak vengeful havoc on their city.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Badboy2020"),
        ],
      ),
    ),
    );
  }
}

class Conjuring2 extends StatelessWidget {
  const Conjuring2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
                'https://m.media-amazon.com/images/M/MV5BOTRkMDlmZWEtMzQyYy00YzgyLTgwM2QtNzgxYmIwNGVlYmJlXkEyXkFqcGc@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'The Conjuring 2',
            genres: ['Horror', 'Thriller', 'Mystery'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
                  'The story focuses on the Hodgson family, particularly young Janet, who becomes the target of malevolent forces. With suspenseful storytelling, chilling visuals, and strong performances, The Conjuring 2 delivers a haunting experience, exploring themes of faith, love, and the battle against evil.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "conjuring2"),
        ],
      ),
    ),
    );
  }
}

class Smile2 extends StatelessWidget {
  const Smile2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
                'https://resizing.flixster.com/gZtomMQp1wjKcCrcWSIBhY8EPBo=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzZlM2VjZGZjLWI3ZDEtNGFjYS05ODFjLTQwZGUyYmMwODcwYy5qcGc=',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Smile 2',
            genres: ['Horror', 'Thriller', 'Mystery', 'Psycologycal'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
                  'About to embark on a world tour, global pop sensation Skye Riley begins experiencing increasingly terrifying and inexplicable events. Overwhelmed by the escalating horrors and the pressures of fame, Skye is forced to face her past.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Smile2"),
        ],
      ),
    ),
    );
  }
}

class KungFu4 extends StatelessWidget {
  const KungFu4({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://preview.redd.it/what-are-your-thoughts-on-kung-fu-panda-4-v0-h07dcvrojaqc1.png?auto=webp&s=ae41984cae30344f92d5e85a72e564c5afc58172',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Kung Fu Panda 4 ',
            genres: ['Animation', 'Comedy', 'Family', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Po is chosen to become the spiritual leader of the Valley of Peace. To fulfill this role, he must find and train a new apprentice, leading to a journey filled with challenges and self-discovery.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "KungfuPanda4"),
        ],
      ),
    ),
    );
  }
}

class WildRobot extends StatelessWidget {
  const WildRobot({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BZjM2M2E3YzAtZDJjYy00MDhkLThiYmItOGZhNzQ3NTgyZmI0XkEyXkFqcGc@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'The Wild Robot ',
            genres: ['Animation', 'Drama', 'Family', 'Adventure'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island''s animals and cares for an orphaned baby goose.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "WildRobot"),
        ],
      ),
    ),
    );
  }
}

class Minions extends StatelessWidget {
  const Minions({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p11376954_p_v13_bc.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Minions (2015)',
            genres: ['Animation', 'Comedy', 'Family', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'The Minions, small yellow creatures, search for a despicable master to serve. Their quest leads them to Scarlet Overkill, the world first female supervillain, who recruits them for a heist. The film delves into the Minions origins and their comedic misadventures.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Monion2015"),
        ],
      ),
    ),
    );
  }
}

class Grinch extends StatelessWidget {
  const Grinch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BODQwOGFjNGEtMTg1ZS00MmY4LTg0NTctYjVlNTNjZjRmZTcxXkEyXkFqcGc@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'The Grinch (2018)',
            genres: ['Animation', 'Comedy', 'Family', 'Fantasy'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'The Grinch, a cynical and grumpy green creature, lives a solitary life with his loyal dog, Max, in a cave on Mount Crumpit. Annoyed by the festive cheer of the neighboring Whos in Whoville, he devises a plan to steal Christmas by disguising himself as Santa Claus and taking all their holiday decorations and gifts. ',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Grinch"),
        ],
      ),
    ),
    );
  }
}

class DoctorStrange2 extends StatelessWidget {
  const DoctorStrange2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://rantingmedia.com/wp-content/uploads/2022/05/DoctorStrangeInTheMultiverseOfMadness_Teaser2_Printed_1-Sht_v4_lg.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Doctor Strange in the multiverse of madness',
            genres: ['Superhero', 'Fantasy', 'Action', 'Thriller'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Doctor Strange teams up with a mysterious teenage girl who can travel across multiverses, to battle other-universe versions of himself which threaten to wipe out the multiverse. They seek help from the Scarlet Witch, Wong and others.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "DoctorStrange2"),
        ],
      ),
    ),
    );
  }
}

class  SpiderM3 extends StatelessWidget {
  const SpiderM3({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BMmFiZGZjMmEtMTA0Ni00MzA2LTljMTYtZGI2MGJmZWYzZTQ2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Spider-Man: No Way Home',
            genres: ['Superhero', 'Fantasy', 'Action', 'Sci-fi'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'With Spider-Man identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "SpiderM3"),
        ],
      ),
    ),
    );
  }
}

class  Aquaman extends StatelessWidget {
  const Aquaman({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BOTk5ODg0OTU5M15BMl5BanBnXkFtZTgwMDQ3MDY3NjM@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Aquaman',
            genres: ['Superhero', 'Fantasy', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Arthur Curry, the human-born heir to the underwater kingdom of Atlantis, goes on a quest to prevent a war between the worlds of ocean and land.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Aquaman"),
        ],
      ),
    ),
    );
  }
}

class  WonderWoman extends StatelessWidget {
  const WonderWoman({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BMjEzYmZkNjktODBmYi00NzNkLWIzMjItMjhkMWZiZTZlN2MwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Wonder Woman',
            genres: ['Superhero', 'Fantasy', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "WonderWoman"),
        ],
      ),
    ),
    );
  }
}

class  It2 extends StatelessWidget {
  const It2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BYzUxM2VhOGItZTY2My00OTA4LWI4NjUtMDA5YWJjM2M2NDJjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'IT Chapter Two',
            genres: ['Horror', 'Thriller'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Twenty-seven years after their first encounter with the terrifying Pennywise, the Losers Club have grown up and moved away, until a devastating phone call brings them back.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "It2"),
        ],
      ),
    ),
    );
  }
}

class Annabelle2 extends StatelessWidget {
  const Annabelle2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BMjA1MzIwMjMxNF5BMl5BanBnXkFtZTgwMDQ3NTc2MjI@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Annabelle: Creation',
            genres: ['Horror', 'Thriller', 'Mystery'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Twelve years after the tragic death of their little girl, a doll-maker and his wife welcome a nun and several girls from a shuttered orphanage into their home, where they become the target of the doll-makers possessed creation, Annabelle.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Annabelle2"),
        ],
      ),
    ),
    );
  }
}

class  BlackWidow extends StatelessWidget {
  const BlackWidow({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BZTMyZTA0ZTItYjY3Yi00ODNjLWExYTgtYzgxZTk0NTg0Y2FlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Black Widow',
            genres: ['Superhero', 'Action', 'Sci-fi'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Natasha Romanoff confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "BlackWidow"),
        ],
      ),
    ),
    );
  }
}

class  Thor3 extends StatelessWidget {
  const Thor3({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Thor: Ragnarok',
            genres: ['Superhero', 'Fantasy', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnarök, the destruction of his world, at the hands of the powerful and ruthless villain Hela.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Thor3"),
        ],
      ),
    ),
    );
  }
}

class  CaptainAmerica extends StatelessWidget {
  const CaptainAmerica({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BNzUyM2YyY2MtNzNlMS00MWU5LTgxNjAtNzZlNmI2NjU2NDZlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Captain America: The First Avenger',
            genres: ['Superhero', 'Sci-fr', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Steve Rogers, a rejected military soldier, transforms into Captain America after taking a dose of a "Super-Soldier serum". But being Captain America comes at a price as he attempts to take down a warmonger and a terrorist organization.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Cap1"),
        ],
      ),
    ),
    );
  }
}

class  CaptainAmerica2 extends StatelessWidget {
  const CaptainAmerica2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BNWY1NjFmNDItZDhmOC00NjI1LWE0ZDItMTM0MjBjZThiOTQ2XkEyXkFqcGc@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Captain America: The Winter Soldier',
            genres: ['Superhero', 'Sci-fr', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Cap2"),
        ],
      ),
    ),
    );
  }
}

class  CaptainAmerica3 extends StatelessWidget {
  const CaptainAmerica3({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Captain America: Civil War',
            genres: ['Superhero', 'Sci-fr', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Political involvement in the Avengers affairs causes a rift between Captain America and Iron Man.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "Cap3"),
        ],
      ),
    ),
    );
  }
}

class  CaptainMarvel extends StatelessWidget {
  const CaptainMarvel({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BZDI1NGU2ODAtNzBiNy00MWY5LWIyMGEtZjUxZjUwZmZiNjBlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Captain Marvel',
            genres: ['Superhero', 'Sci-fr', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Carol Danvers becomes one of the universe is most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "CaptainMarvel"),
        ],
      ),
    ),
    );
  }
}

class  CaptainMarvel2 extends StatelessWidget {
  const CaptainMarvel2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BYzczOWM4MzItMWMyOS00ZDczLWIxMzctNzBmYTgzOTI1MzI3XkEyXkFqcGc@._V1_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'The Marvels',
            genres: ['Superhero', 'Sci-fr', 'Action'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Carol Danvers gets her powers entangled with those of Kamala Khan and Monica Rambeau, forcing them to work together to save the universe.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "CaptainMarvel2"),
        ],
      ),
    ),
    );
  }
}

class MisssionImpossible extends StatelessWidget {
  const MisssionImpossible({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Poster Section
          PosterSection(
            imageUrl:
            'https://m.media-amazon.com/images/M/MV5BN2U4OTdmM2QtZTkxYy00ZmQyLTg2N2UtMDdmMGJmNDhlZDU1XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 16),
          // Title and Genres Section
          TitleAndGenres(
            title: 'Mission: Impossible - Dead Reckoning Part One',
            genres: ['Action', 'Crime', 'Sci-fi', 'Thriller'],
          ),
          SizedBox(height: 16),
          // Description Section
          DescriptionSection(
            description:
            'Ethan Hunt and his IMF team must track down a dangerous weapon before it falls into the wrong hands.',
            onMoreInfoPressed: () {
              // Add more info logic
            },
          ),
          const SizedBox(height: 16),
             // Comment and Rating Section
            CommentSection(movieId: "MissionImpossible"),
        ],
      ),
    ),
    );
  }
}