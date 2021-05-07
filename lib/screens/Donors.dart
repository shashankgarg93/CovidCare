import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_care/widgets/customalert.dart';
import 'package:enhanced_drop_down/enhanced_drop_down.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),
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
                              Text('Name:',  style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20.0,
                              ),),
                              Text(doc[index]["name"],
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20.0,
                              ),),
                             ],
                          ),
                          Row(
                            children: [
                              Text('Quantity available: ',  style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20.0,
                              ),),
                              Text(doc[index]['quantity'].toString(),  style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20.0,
                              ),),
                            ],
                          ),
                          RaisedButton.icon(onPressed: ()


                          async{
                            final url='tel:'+doc[index]["Contact"];
                            if(await canLaunch(url)){
                              await launch(url);
                            }
                            else{
                              throw 'Could not launch';
                            }
                          },
                            icon: Icon(Icons.phone,color: Colors.blueAccent,),
                            elevation: 0.0,
                            autofocus: true,
                            label: Text(doc[index]["Contact"],
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20.0,
                              ),

                            ),),

                          // Row(
                          //   children: [
                          //     Text('Please contact on: +91 '),
                          //     Text(doc[index]['phone no']),
                          //   ],
                          // ),

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