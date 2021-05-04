import 'package:covid_care/screens/donate_screen.dart';
import 'package:covid_care/screens/donate_screen2.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //scaffoldBackgroundColor:Color.fromRGBO(90, 53, 42, 1),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
            backgroundColor: Color.fromRGBO(39,33,60,1),
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.

              titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(166, 165, 122, 1),
     ),
        ),

      ),
      routes: {
        '/' : (context) =>HomePage() ,
        '/donate_screen' : (context) => DonateScreen(),
        '/donate_screen2' : (context) => DonateScreen2(),
        '/recieve_screen' : (context) => RecieveScreen(),
      }
      ,
    );
  }
}