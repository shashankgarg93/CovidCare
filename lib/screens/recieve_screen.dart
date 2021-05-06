import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_care/Services/database.dart';
import 'package:covid_care/screens/itemreq.dart';
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
        appBar: AppBar(
        //  backgroundColor: Colors..,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [

                   StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance.collection('root').snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          var doc = snapshot.data!.docs;
                          return
                            EnhancedDropDown.withData(
                            dropdownLabelTitle: "gdsgsdsd",

                            //  dropdownLabelTitle: "Please select your city if *Available",

                                dataSource: doc.map((e) => e.id).toList(),
                                defaultOptionText: "City",
                                valueReturned: (chosen) {
                                   city=chosen;
                               });
                        } else {
                          return CircularProgressIndicator(backgroundColor: Colors.red,);
                        }
                      },


                    ),
                ],
                  ),


                Container(
                  height: 60,
                  margin: EdgeInsets.all(10),
                  child: FlatButton(
                    onPressed: (){
                      if(city!='')
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemReq(city: city)));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF0077b6),Color(0xFFcaf0f8)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,

                        ),
                        borderRadius: BorderRadius.circular(30),),
                      child: Container(
                        constraints:
                        BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Submit",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                              fontFamily: 'Vesper',
                              fontSize: 30),

                        ),
                      ),

                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
