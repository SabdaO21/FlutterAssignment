import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/basic_screen.dart';
import 'package:flutter_application_1/login_screen/login_screen.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:flutter_application_1/setting/setting_screen.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color:  isDarkMode ? Color(0xfff0bf4c) : Color(0xFF2C2C2C)),
          onPressed: () {
            Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen()
                    )
                  );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://media.cnn.com/api/v1/images/stellar/prod/150627125003-04-ugliest-dog-0627.jpg?q=w_2000,h_1125,x_0,y_0,c_fill'),
          ),
          const SizedBox(height: 10),
          const Text(
            'Admin',
            style: TextStyle(
              color:  Color(0xfff0bf4c),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '@admin',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                ProfileMenuItem(
                  icon: Icons.person,
                  title: 'My Profile',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.notifications,
                  title: 'Notification',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.history,
                  title: 'History',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.subscriptions,
                  title: 'My Subscription',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.settings,
                  title: 'Setting',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SettingsScreen()
                      )
                    );
                  },
                ),
                ProfileMenuItem(
                  icon: Icons.logout,
                  title: 'Logout',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginScreen()
                      )
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ProfileMenuItem({super.key, 
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: Icon(
          icon,
          color: Color(0xfff0bf4c),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: isDarkMode ? Color(0xfff0bf4c) : Color(0xFF2C2C2C)),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
        size: 16,
      ),
      onTap: onTap,
    );
  }
  }

