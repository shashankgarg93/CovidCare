import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_care/widgets/customalert.dart';
import 'package:enhanced_drop_down/enhanced_drop_down.dart';
import 'package:flutter/material.dart';

class Donor extends StatefulWidget {
  String city = '';
  String req = '';
  Donor({required this.city,required this.req});
  @override
  _DonorState createState() => _DonorState();
}

class _DonorState extends State<Donor> {
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
          child: SizedBox(
            height: 1000,
            child: 
              FutureBuilder<QuerySnapshot>(
                future: FirebaseFirestore.instance.collection('root').doc(widget.city).collection(widget.req).get(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var doc = snapshot.data!.docs;
                    return ListView.builder(
                      itemCount:doc.map((e) => e.id).toList().length,
                      itemBuilder: ( context, index){
                        return Card(
                          child: Column(children: [
                            Row(
                              children: [
                                Text('Name: '),
                                Text(doc[index]["name"]),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Please contact on: +91 '),
                                Text(doc[index]['phone no']),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Quantity available: '),
                                Text(doc[index]['quantity'].toString()),
                              ],
                            ),
                          ],),
                        );
                      },
                    );
                  } else {
                    
                    return LinearProgressIndicator();
                  }
                },

                
              ),
            
          ),
        ),
      ),
    );
  }
}