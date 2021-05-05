import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_care/Services/database.dart';
import 'package:flutter/material.dart';
import 'package:enhanced_drop_down/enhanced_drop_down.dart';
class RecieveScreen extends StatefulWidget {
  @override
  _RecieveScreenState createState() => _RecieveScreenState();
}

class _RecieveScreenState extends State<RecieveScreen> {
  var db = FirebaseFirestore.instance.collection('root');
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(image:DecorationImage(
              image: NetworkImage('https://source.unsplash.com/1600x900/?medical'),
              fit: BoxFit.cover),),

child: Scaffold(
  appBar: AppBar(
  ),
  body: SingleChildScrollView
  (child: Container(
  child: SizedBox(
    height: 200,
      child: Column(children: [
        StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('root').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
      var doc = snapshot.data!.docs;
      return Expanded(
              child: new ListView.builder(
          scrollDirection: Axis.vertical,
            itemCount: doc.length,
            itemBuilder: (context, index) {

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(

                      child: 
                        Text(doc[index].id,
                        style: TextStyle(fontSize: 30),),
                        

                  ),
                );
            }),
      );
            } else {
      return LinearProgressIndicator();
            }
          },
        ),
        // EnhancedDropDown.withData(
        //           dropdownLabelTitle: "Please select your city if *Available",
        //           dataSource: AddUser().getcity(x),
        //           defaultOptionText: "City",
        //           valueReturned: (chosen) {
        //              print(chosen);
        //          })
    ],),
  ),
    ),
  ),
),

    );


  }
}