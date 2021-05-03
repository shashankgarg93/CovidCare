import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Covid-Care',
        ),
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
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/donate_screen');
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
              child: Text('Donate',
              style: TextStyle(
                color: Color(0xFFA6A57A),
                fontSize: 40,
              ),),
            ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/recieve_screen');
            },
                style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFA6A57A)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)
                        )
                    ),
                ),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Recieve',
              style: TextStyle(
                color: Color(0XFFA33B20),
                fontSize: 39,
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
    );
  }
}