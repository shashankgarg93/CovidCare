import 'package:covid_care/screens/donate_screen.dart';
import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'screens/recieve_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      routes: {
        '/' : (context) =>HomePage() ,
        '/donate_screen' : (context) => DonateScreen(),
        '/recieve_screen' : (context) => RecieveScreen(),
      }
      ,
    );
  }
}