import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp (
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override 
  Widget build (BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("HELLO")),
      body: ElevatedButton (
        child: Text("Button"),
        onPressed: (){},
      )
    );
  }
}
