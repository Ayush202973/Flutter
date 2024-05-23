import 'package:flutter/material.dart';
//import 'package:xten_project/home_page.dart';
//import 'package:xten_project/login_page.dart';
import 'package:xten_project/splash_screen.dart';
//import 'package:xten_project/splash_screen.dart';

//import 'package:xten_project/design2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
