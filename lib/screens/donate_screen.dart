import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DonateScreen extends StatefulWidget {
  @override
  _DonateScreenState createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
 String email='';
 String number='';
 String name='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
   body: SafeArea(
     child: Container(

       padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
       child: Column(
         children: <Widget>[
           TextFormField(
autofocus: true,
             decoration: InputDecoration(
               hintText: 'NAME',

enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(
      color: Color.fromRGBO(39,33,60,1),
      width:1.0,
  ),
),
             ),

             onChanged: (val){
               setState(() {
                 name=val;
               }

               );

               },

           ),
           SizedBox(height:15),
           TextFormField(
             autofocus: true,
             decoration: InputDecoration(
               hintText: 'Email',
enabledBorder: OutlineInputBorder(
 borderSide: BorderSide(
   color: Color.fromRGBO(39,33,60,1),
width: 0.5
 )
)
             ),

             onChanged: (val){
               setState(() {
                 email=val;
               }

               );

             },


           ),
SizedBox(height: 15,),
           TextFormField(
             autofocus: true,
             decoration: InputDecoration(
               hintText: 'Phone Number',
enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(
    color: Color.fromRGBO(39,33,60,1),
width: 0.5
  )
)
             ),

             onChanged: (val){
               setState(() {
                 number=val;
               }

               );

             },

           ),
           SizedBox(height:30),
           Center(child: RaisedButton.icon(
               color: Color.fromRGBO(39,33,60,1),
               onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,), label:Text('Submit',style: TextStyle(
             color: Colors.white,
           ),)))
         
         ],
       ),
     ),
   ),
    );

  }
}