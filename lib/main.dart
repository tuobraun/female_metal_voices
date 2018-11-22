import 'package:flutter/material.dart';
import 'tarja.dart';
import 'sharon.dart';
import 'charlotte.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Female Metal Voices App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        canvasColor: Colors.transparent,
      ),
      home: Tarja(),
      routes: <String, WidgetBuilder>{
        '/tarja': (BuildContext context) => Tarja(),
        '/sharon': (BuildContext context) => Sharon(),
        '/charlotte': (BuildContext context) => Charlotte(),
      },
    );
  }
}