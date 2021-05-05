import 'package:flutter/material.dart';

class ItemReq extends StatefulWidget {
  @override
  _ItemReqState createState() => _ItemReqState();
}

class _ItemReqState extends State<ItemReq> {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: Scaffold(
            appBar: AppBar(),
                      body: Center(
                        child: 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              SizedBox(
                                height: 80,
                                width: 300,
                                      child: FlatButton(
                                        onPressed: (){},
                                  color: Colors.amber[600],
                                  child: Text('Remdisivir'),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 80,
                                width: 300,
                                      child: FlatButton(
                                        onPressed: (){
                                          
                                        },
                                  color: Colors.amber[600],
                                  child: Text('Oxygen'),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 80,
                                width: 300,
                                      child: FlatButton(
                                        onPressed: (){},
                                  color: Colors.amber[600],
                                  child: Text('Tozi Injection'),
                                ),
                              ),
                              
                            ],
                          ),
                        
                      ),
          ),
    );
  }
}