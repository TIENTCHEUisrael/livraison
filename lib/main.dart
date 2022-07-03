import 'package:flutter/material.dart';
import './SplashScreen/SplashScreen1.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Page',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}