import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Need to import package for invert Status Bar SystemChrome.setSystemUIOverlayStyle

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // Contrast for background color
}

class Charlotte extends StatefulWidget {
  @override
  _CharlotteState createState() => _CharlotteState();
}

class _CharlotteState extends State<Charlotte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Room for status bar
          Container(
            width: double.infinity, // Maximum width
            height: 8.0,
          ),

          // CARD
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(),
            ),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand, // Makes image large to fill the screen 
      children: <Widget>[
        // Background
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
            'assets/card3.jpg',
            fit: BoxFit.cover, // Sets image as a background
          ),
        ),

        // CONTENT
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Charlotte'.toUpperCase(), // CAPS
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontFamily: 'petita',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                ),
                color: Colors.black.withOpacity(0.25),
              ),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                    child: Text(
                      'Tarja'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 15.0,
                        fontFamily: 'petita',
                        ),                    
                    ),
                    //color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/tarja');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        
        // Bottom Text
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'version 0.1'
              ),
            ),
          ],
        )
      ],
    );
  }
}