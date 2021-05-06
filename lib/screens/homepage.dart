import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image:DecorationImage(
        image: NetworkImage('https://source.unsplash.com/1600x900/?medical'),
        fit: BoxFit.cover),),
      child: Scaffold(
    //    backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Covid-Care',

          ),
          actions: <Widget>
          [
            IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
          ],
          backgroundColor: Color(0xffff477e),
          centerTitle: true,
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(

            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Container(
               height: 60,
               margin: EdgeInsets.all(10),
               child: FlatButton(
                 onPressed: (){
                   Navigator.pushNamed(context, '/donate_screen');
                 },
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(80)),
                 child: Ink(
                   decoration: BoxDecoration(
                     gradient: LinearGradient(
                       colors: [Color(0xFFFF0A54),Color(0xFFf7cad0)],
                       begin: Alignment.centerLeft,
                       end: Alignment.centerRight,

                     ),
                     borderRadius: BorderRadius.circular(30),),
                   child: Container(
                       constraints:
                       BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                       alignment: Alignment.center,
                       child: Text(
                         "Donate",
                         textAlign: TextAlign.center,
                         style: TextStyle(color: Colors.white,
                             fontFamily: 'Vesper',
                             fontSize: 30),

                   ),
                 ),

               ),
             ),
             ),
              SizedBox(height: 20,),
              Container(
                height: 60,
                margin: EdgeInsets.all(10),
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/recieve_screen');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80)),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFF0A54),Color(0xFFf7cad0)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,

                      ),
                      borderRadius: BorderRadius.circular(30),),
                    child: Container(
                      constraints:
                      BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Recieve",
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
        //floatingActionButton: FloatingActionButton(
        //  onPressed: (){},
        //  tooltip: 'Increment',
       //   child: Icon(Icons.add),
        //), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}