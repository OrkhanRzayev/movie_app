

import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_screen.dart';

void main(){
  runApp(const MovieApp());
}


class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      home: HomeScreen(),
    );
    
  }
}