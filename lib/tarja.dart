import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Need to import package for invert Status Bar SystemChrome.setSystemUIOverlayStyle
import 'popup.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light); // Contrast for background color
}

class Tarja extends StatefulWidget {
  @override
  _TarjaState createState() => _TarjaState();
}

class _TarjaState extends State<Tarja> {
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
    void _showModalSheet() {
      // ///////////////////////////////////////////////////////////// MODAL BOTTOM SHEET
      showModalBottomSheet(
          context: context,
          builder: (builder) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
              child: Container(
                child: TarjaAlbums(),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
              ),
            );
          }
      );
    }

    return Stack(
      fit: StackFit.expand, // Makes image large to fill the screen
      children: <Widget>[
        // Background
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/card1.jpg',
            fit: BoxFit.cover, // Sets image as a background
          ),
        ),

        // CONTENT
        Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // .start - on the screen top; .center
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Tarja'.toUpperCase(), // CAPS
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
                      'Sharon'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 15.0,
                        fontFamily: 'petita',
                        //fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                    //color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/sharon');
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
              child: Text("version 0.2.2"),
            ),
            
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                'Show more info'.toUpperCase(),
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 15.0,
                  fontFamily: 'petita',
                  //fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              onPressed: _showModalSheet,
            ),
          ],
        ),
      ],
    );
  }
}
