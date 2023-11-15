import 'package:flutter/material.dart';
import 'package:kaitan/login_page.dart'; 


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splash: Icon(Icons.person, size: 80, color: Colors.yellow,), 
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.rotationTransition,
        duration: 1000,
        ),
    );
  }
}