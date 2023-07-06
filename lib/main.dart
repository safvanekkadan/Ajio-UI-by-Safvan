import 'package:ajio/bottom_bar.dart/bottoms.dart';
import 'package:ajio/screens/home_screen.dart';
import 'package:ajio/screens/splash%20Screen.dart';
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
      
      title: 'AJIO ',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 233, 232, 231),
        primaryColor: Color.fromARGB(255, 201, 219, 238),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor:Color.fromARGB(255, 241, 241, 239)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),  
     
      home:SplashScreen(),
      );
  }
}
