import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(90, 53, 42, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(39,33,60,1),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Covid-Care',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(166, 165, 122, 1),
        ),),
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
            ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
      primary: Color(0xFFA33B20)),
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
            ElevatedButton(onPressed: (){},
            style: ButtonStyle(backgroundColor: ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Recieve',
              style: TextStyle(
                color: Color(0xFFA6A57A),
                fontSize: 39,
              ),),
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