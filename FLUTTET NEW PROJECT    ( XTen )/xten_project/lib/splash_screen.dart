import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xten_project/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF8F00FF),
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/logo.png'),
          radius: 50,
        ),
      ),
    );
  }
}
