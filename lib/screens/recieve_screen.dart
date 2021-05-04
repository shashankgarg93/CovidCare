import 'package:flutter/material.dart';
class RecieveScreen extends StatefulWidget {
  @override
  _RecieveScreenState createState() => _RecieveScreenState();
}

class _RecieveScreenState extends State<RecieveScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(image:DecorationImage(
              image: NetworkImage('https://source.unsplash.com/1600x900/?medical'),
              fit: BoxFit.cover),),

child: Scaffold(
  appBar: AppBar(
  ),
),

    );


  }
}