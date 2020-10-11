import 'package:flutter/material.dart';
import 'package:food_house/screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food House',
      theme: ThemeData(

        primaryColor: Colors.white,
        fontFamily: 'Proxima Nova',


      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

