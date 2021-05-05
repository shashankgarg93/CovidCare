import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_care/Services/database.dart';
import 'package:flutter/material.dart';
import 'package:enhanced_drop_down/enhanced_drop_down.dart';

class RecieveScreen extends StatefulWidget {
  @override
  _RecieveScreenState createState() => _RecieveScreenState();
}

class _RecieveScreenState extends State<RecieveScreen> {
  String city = '';
  var db = FirebaseFirestore.instance.collection('root');
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image:
                NetworkImage('https://source.unsplash.com/1600x900/?medical'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('root').snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var doc = snapshot.data!.docs;
                    return EnhancedDropDown.withData(
                          dropdownLabelTitle: "Please select your city if *Available",
                          dataSource: doc.map((e) => e.id).toList(),
                          defaultOptionText: "City",
                          valueReturned: (chosen) {
                             city=chosen;
                         });
                  } else {
                    return LinearProgressIndicator();
                  }
                },

                
              ),
              ElevatedButton(onPressed: (){
                if(city!='')
                Navigator.pushNamed(context, '/itemreq_screen');
              },
                style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all<Color>(Color(0XFFA33B20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)
                      )
                  ),
                ),

                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Submit',
                style: TextStyle(
                  color: Color(0xFFA6A57A),
                  fontSize: 40,
                ),),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
