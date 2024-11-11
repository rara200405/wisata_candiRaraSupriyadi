import 'package:flutter/material.dart';
import 'package:rarasupriyadi/data/candi_data.dart';
import 'package:rarasupriyadi/screens/SignInSreen.dart';
import 'package:rarasupriyadi/screens/detail_screen.dart';
import 'package:rarasupriyadi/screens/profile_screen.dart';
import 'package:rarasupriyadi/screens/search_screen.dart';
import 'package:rarasupriyadi/screens/Sign_up_screen.dart';
import 'package:rarasupriyadi/screens/Home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme:
        ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true,
      ),
      home: SignUpScreen(),
    );
  }
}