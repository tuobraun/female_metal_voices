import 'package:flutter/material.dart';

class TarjaHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Room for status bar
        Container(
          width: double.infinity, // Maximum width
          height: 8.0,
        ),

        // CARD
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Hero(
              tag: "TarjaAlbums",
              child: Container(
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
            ),
          ),
        ),
      ],
    );
  }
}
