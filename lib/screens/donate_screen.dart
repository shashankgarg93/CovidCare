import 'package:flutter/material.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';

class DonateScreen extends StatefulWidget {
  @override
  _DonateScreenState createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
 String email='';
 String number='';
 String name='';
 String countryValue = '';
 String stateValue = '';
 String cityValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
   body: Container(

     padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
     child: Column(
       children: <Widget>[
         TextFormField(
autofocus: true,
           decoration: InputDecoration(
             hintText: 'NAME',
           ),

           onChanged: (val){
             setState(() {
               name=val;
             }

             );

             },

         ),
         TextFormField(
           autofocus: true,
           decoration: InputDecoration(
             hintText: 'Email',

           ),

           onChanged: (val){
             setState(() {
               email=val;
             }

             );

           },


         ),
         TextFormField(
           autofocus: true,
           decoration: InputDecoration(
             hintText: 'Phone Number',

           ),

           onChanged: (val){
             setState(() {
               number=val;
             }

             );

           },

         ),
         SelectState(
              onCountryChanged: (value) {
              setState(() {
                countryValue = value;
              });
            },
            onStateChanged:(value) {
              setState(() {
                stateValue = value;
              });
            },
             onCityChanged:(value) {
              setState(() {
                cityValue = value;
              });
            },
            
            ),
         SizedBox(height:10),
         Center(child: RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.add), label:Text('Submit')))
       ],
     ),
   ),
    );

  }
}