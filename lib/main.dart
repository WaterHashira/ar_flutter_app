import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'AR_screen.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/dialog_page': (context) => dialog_box(),
        '/AR_screen': (context) => AR_screen(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sample first Page"),
        ),
        body: dialog_box()
      ),
    );
  }}

// class for Dialog Box :-
class dialog_box extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("AR Simulator Dialog Box",
        style: TextStyle(
          //fontFamily: Pacifico,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      actions:<Widget> [
        Center(
          child: FlatButton(
            child: Text("Go Back!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 29.0,
              ),
            ),
            // height: 40.0,
            textColor: Colors.white,
            color: Colors.black54,
            onPressed: (){
              // link the CamaraPreview :- Gallary
              Navigator.pop(context);
            },
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Center(
          child: FlatButton(
            child: Text("View AR Simulation",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 29.0,
              ),),
            textColor: Colors.white,
            color: Colors.black54,
            onPressed: (){
              // link the CamaraPreview :- camara
              Navigator.pushNamed(context, '/AR_screen');
            },
            //height: 29.0,
          ),
        ),
      ],
    );
  }
}
//ar screen
