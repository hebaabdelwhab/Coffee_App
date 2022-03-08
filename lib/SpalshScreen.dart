import 'package:coffee_app/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(
    seconds: 5,
    navigateAfterSeconds:welcomeScreen(),
    image:Image.asset('assets/images/cup1.png'),
    photoSize: 200.0,
    backgroundColor: Colors.brown,
    loaderColor:Colors.white,
    )
    );
  }
}
