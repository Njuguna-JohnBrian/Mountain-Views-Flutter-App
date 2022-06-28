import 'package:flutter/material.dart';
import 'package:mountains/screens/details_screen.dart';
import 'package:mountains/screens/home_screen.dart';
import 'screens/splash_screen.dart';

void main()=> runApp(const MountainApp());

class MountainApp extends StatelessWidget {
  const MountainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: SplashPage()
    );
  }
}