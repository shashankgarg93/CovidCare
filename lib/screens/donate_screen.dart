import 'package:covid_care/Services/database.dart';
import 'package:covid_care/widgets/customalert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
class DonateScreen extends StatefulWidget {
  @override
  _DonateScreenState createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {

  final _formKey = GlobalKey<FormBuilderState>();
  String name = '';
  String city = '';
  // ignore: non_constant_identifier_names
  int r_count = 0;
  // ignore: non_constant_identifier_names
  int t_count = 0;
  int money = 0;
  // ignore: non_constant_identifier_names
  int o_count = 0;
  String contactnumber = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image:DecorationImage(
          image: NetworkImage('https://source.unsplash.com/1600x900/?medical'),
          fit: BoxFit.cover),),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),
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
                            prefixIcon: Icon(Icons.person_pin_rounded),
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

                            FormBuilderValidators.max(context, 70),
                          ]),

                        ),
                        SizedBox(height: 20),
                        FormBuilderTextField(
                          name: 'contact',
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText:
                            'Please enter your Contact number',
                          ),
                          onChanged: (val){
                            setState(() {
                              contactnumber=val.toString();
                            });
                          },
                          keyboardType: TextInputType.number,
                          // valueTransformer: (text) => num.tryParse(text),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),

                          ]),

                        ),
                        SizedBox(height: 20),

                        FormBuilderTextField(
                          name: 'city',
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_city_outlined),
                            labelText:
                            'Please enter your City',
                          ),
                          onChanged: (val){
                            setState(() {
                              city=val;
                            });

                          },

                          // valueTransformer: (text) => num.tryParse(text),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),

                            FormBuilderValidators.max(context, 70),
                          ]),

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











                        //**********************************************************************************

                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.medical_services
                                  ,color: Colors.blueAccent,),
                                title: const Text('Remdisivir'),
                                subtitle: Text(
                                  '$r_count',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Remfagnhjsnaklk',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    textColor: Colors.blueAccent,
                                    onPressed: () {
                                     setState(() {
                                       r_count++;
                                     });
                                      // Perform some action
                                    },
                                    child: Icon(FontAwesomeIcons.plus),
                                  ),
                                  FlatButton(
                                    textColor: Colors.blueAccent,
                                    onPressed: () {
                                     setState(() {
                                       if(r_count>0){r_count--;}
                                     });
                                    },
                                    child: Icon(FontAwesomeIcons.minus),
                                  ),
                                ],
                              ),
                    Image.network("https://s3.amazonaws.com/pixpa.com/com/articles/1525891879-683036-peter-sjo-201640-unsplashjpg.png"),
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.medical_services
                                  ,color: Colors.blueAccent,),
                                title: const Text('Oxygen Cylinder(KG)'),
                                subtitle: Text(
                                  '$o_count',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Remfagnhjsnaklk',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    textColor:  Colors.blueAccent,
                                    onPressed: () {
                                      setState(() {
                                        o_count++;
                                      });
                                      // Perform some action
                                    },
                                    child: Icon(FontAwesomeIcons.plus),
                                  ),
                                  FlatButton(
                                    textColor:  Colors.blueAccent,
                                    onPressed: () {
                                      setState(() {
                                        if(o_count>0){o_count--;}
                                      });
                                    },
                                    child: Icon(FontAwesomeIcons.minus),
                                  ),
                                ],
                              ),
                              Image.network("https://s3.amazonaws.com/pixpa.com/com/articles/1525891879-683036-peter-sjo-201640-unsplashjpg.png"),
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.medical_services
                                ,color: Colors.blueAccent,),
                                title: const Text('Tozila Injection'),
                                subtitle: Text(
                                  '$t_count',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Remfagnhjsnaklk',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    textColor:  Colors.blueAccent,
                                    onPressed: () {
                                      setState(() {
                                        t_count++;
                                      });
                                      // Perform some action
                                    },
                                    child: Icon(FontAwesomeIcons.plus),
                                  ),
                                  FlatButton(
                                    textColor:  Colors.blueAccent,
                                    onPressed: () {
                                      setState(() {
                                        if(t_count>0){t_count--;}
                                      });
                                    },
                                    child: Icon(FontAwesomeIcons.minus),
                                  ),
                                ],
                              ),
                              Image.network("https://s3.amazonaws.com/pixpa.com/com/articles/1525891879-683036-peter-sjo-201640-unsplashjpg.png"),
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
                                if(o_count==0 && r_count==0 && money==0 && t_count==0)
                                {

                                }
                                else{
                                  AddUser().updateUser(_formKey.currentState!.value, money, r_count, t_count, o_count);
                                  _formKey.currentState!.reset();
                                  setState(() {
                                    money=0;
                                    r_count=0;
                                    t_count=0;
                                    o_count=0;
                                  });
                                  AlertButton().display_alert(context);
                                }
                              } else {
                                print("validation failed");
                              }


                            },
                          ),
                        ),


















                      ],
          ),
                ],
              ),
        ),],
    )
    )
        )
        )
      ),
    );

  }
}