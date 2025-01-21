import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/basic_screen.dart';
import 'package:flutter_application_1/setting/dark_light.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailCtrl = TextEditingController(text: '');
  final TextEditingController passwordCtrl = TextEditingController(text: '');
  bool _hidePassword = true;
  


  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IMDB_Logo_2016.svg/2560px-IMDB_Logo_2016.svg.png',
            width: 100,
            height: 100, 
            ),
            const SizedBox(height: 40),
            TextField(
              controller: emailCtrl,
              style: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
              decoration: InputDecoration(
                labelText: 'Email Address',
                labelStyle: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordCtrl,
              style: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                ),
                suffixIcon: IconButton(
                  icon: Icon(_hidePassword ? Icons.visibility_off : Icons.visibility, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _hidePassword = !_hidePassword;
                    });
                  }, 
                ),
              ),
              obscureText: _hidePassword,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (emailCtrl.text == 'admin' && passwordCtrl.text == 'admin') {
                  // Successful login logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Login Successful')),
                  );
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen()
                    )
                  );
                } else {
                  // Failed login logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Invalid Email or Password')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDarkMode ? const Color(0xfff0bf4c) :Color(0xFF2C2C2C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18, color:  isDarkMode ? const Color.fromARGB(255, 0, 0, 0) :Color(0xfff0bf4c)),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Divider(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'or',
                    style: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                  ),
                ),
                Expanded(
                  child: Divider(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Under construction!!')),
                  );
                  },
                  icon: Icon(Icons.g_mobiledata, color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                  label: const Text('Google'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
                    minimumSize: const Size(120, 50),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Under construction!!')),
                  );
                  },
                  icon: Icon(Icons.facebook, color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
                  label: const Text('Facebook'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDarkMode ? Colors.black : Color.fromARGB(255, 186, 202, 225),
                    minimumSize: const Size(120, 50),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            TextButton(
              onPressed: () {},
              child: Text(
                'Do you already have an account? Sign up now',
                style: TextStyle(color: isDarkMode ? Colors.white : Color(0xFF2C2C2C)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
