import 'package:contct/Home_Screen.dart';
import 'package:contct/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   initialRoute: 'Splash' ,
      routes: {
        'Splash': (context) => SplashScreen(),
        'home': (context) => HomeScreen(),

      },

    );
  }
}


