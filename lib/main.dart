
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_care/screens/Donors.dart';
import 'package:covid_care/screens/donate_screen.dart';
import 'package:covid_care/screens/donate_screen2.dart';
import 'package:covid_care/screens/itemreq.dart';
import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'screens/recieve_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
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
    '/donor_screen' : (context) => Donor(city: '', req: ''),
    '/itemreq_screen' : (context) => ItemReq(city: ''),
         // '/dsz':(context)=>
        }
        ,
      );
  }
}