import 'dart:async';
import 'package:flutter/material.dart';
import './NavigatePage1.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 10),
        (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NavigatePage1()));
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                  Lottie.asset('assets/image/splash1/23741-home-delivery-man.json'),
                  const SizedBox(height: 50,),
                  const Text('Bonjour tonton'),
              ],
            ),
            const CircularProgressIndicator(),
            Text('Coursiers version 1.0.1')
          ],
        )
      ),
    );
  }
}
