import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primaryColor: Color(0xFFCF923E),
        accentColor: Color(0xFFF2E8DA),
        scaffoldBackgroundColor: Color(0xFFF3F5F7)
      ),
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}