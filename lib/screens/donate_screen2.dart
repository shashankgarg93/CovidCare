import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
class DonateScreen2 extends StatefulWidget {
  @override
  _DonateScreen2State createState() => _DonateScreen2State();
}

class _DonateScreen2State extends State<DonateScreen2> {
  final _formKey = GlobalKey<FormBuilderState>();
  String name = '';
  String city = '';
  int r_count = 0;
  String contactnumber = '';
  Iterable<String> items =[];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image:DecorationImage(
        image: NetworkImage('https://source.unsplash.com/1600x900/?medical'),
        fit: BoxFit.cover),),
      child: Scaffold(
        appBar: AppBar(),
   body: SingleChildScrollView(
       child: SafeArea(
         child: Container(

           padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
           child: Column(
             children: <Widget>[
               FormBuilder(
          key: _formKey,
          child: Column(
            children: <Widget>[
              FormBuilderTextField(
                name: 'name',
                decoration: InputDecoration(
                  labelText:
                      'Please enter your Name',
                ),
                onChanged: (val){
                  setState(() {
                    name=val;
                  });
                },
                
                // valueTransformer: (text) => num.tryParse(text),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.numeric(context),
                  FormBuilderValidators.max(context, 70),
                ]),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              FormBuilderTextField(
                name: 'phone',
                decoration: InputDecoration(
                  labelText:
                      'Please enter your Contact number',
                ),
                onChanged: (val){
                  setState(() {
                    contactnumber=val;
                  });
                },
                
                // valueTransformer: (text) => num.tryParse(text),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.numeric(context),
                  FormBuilderValidators.max(context, 70),
                ]),
                keyboardType: TextInputType.number,
              ),
                          SizedBox(height: 20),

              FormBuilderTextField(
                name: 'city',
                decoration: InputDecoration(
                  labelText:
                      'Please enter your City',
                ),
                onChanged: (val){
                  setState(() {
                    city=val.toUpperCase();
                  });
                },
                
                // valueTransformer: (text) => num.tryParse(text),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.numeric(context),
                  FormBuilderValidators.max(context, 70),
                ]),
                keyboardType: TextInputType.number,
              ),
                          SizedBox(height: 20),

              // FormBuilderFilterChip(
              //   onChanged: (val)
              //   {
              //     items = val.map((e) => e.toString());
              //   },
              //   name: 'filter_chip',
              //   decoration: InputDecoration(
              //     labelText: 'Select items you want to donate',
              //   ),
              //   options: [
              //     FormBuilderFieldOption(
              //         value: 'Remdisivr', child: Text('Remdisivr')),
              //     FormBuilderFieldOption(
              //         value: 'Oxygen Cylinder', child: Text('Oxygen Cylinder')),
              //     FormBuilderFieldOption(
              //         value: 'Tozi Injection', child: Text('Tozi Injection')),
              //   ],
              // ),
              Card(
                    color: Color(0xFF1D1E33),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Remdisivir',
                          style: TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
),
                        ),
                        Text(
                          '$r_count',
                          style: TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawMaterialButton(
                              elevation: 0.0,
                              constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
                                child: Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    r_count--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RawMaterialButton(
                              elevation: 0.0,
                              constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
                                child: Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    r_count++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                          SizedBox(height: 20),

            
              
              
              
              
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                color: Theme.of(context).accentColor,
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  _formKey.currentState!.save();
                  if (_formKey.currentState!.validate()) {
                    print(_formKey.currentState!.value);
                  } else {
                    print("validation failed");
                  }
                },
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: MaterialButton(
                color: Theme.of(context).accentColor,
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  _formKey.currentState!.reset();
                },
              ),
            ),
          ],
        )

           ],
         ),
       ),
        ),
   ),),
    );

  }
}