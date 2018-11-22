import 'package:flutter/material.dart';
//import 'dart:async';
//import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'albums.dart';

class TarjaAlbums extends StatefulWidget {
  TarjaAlbums({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TarjaAlbumsState createState() => _TarjaAlbumsState();
}

class _TarjaAlbumsState extends State<TarjaAlbums> {
  List<Album> _albums = albums;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // L I S T   V I E W
        children: _albums.map(_buildItem).toList(),
      ),
    );
  }

  Widget _buildItem(Album album) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 8.0),
      child: ListTile(
          leading: Image.asset(
            "${album.img}",
            width: 80.0,
            height: 80.0,
          ),
          title: Text(album.name, style: TextStyle(fontSize: 20.0)),
          subtitle: Text(album.band, style: TextStyle(fontSize: 15.0)),
          onTap: () async {
            final tarjaUrl = "${album.domain}";
            if (await canLaunch(tarjaUrl)) {
              await launch(tarjaUrl);
            } else {
              throw 'Could not launch $tarjaUrl';
            }
          }),
    );
  }
}