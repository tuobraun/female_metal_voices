import 'package:flutter/material.dart';
import 'albums.dart';
import 'tarja_list.dart';

class TarjaAlbums extends StatefulWidget {
  TarjaAlbums({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TarjaAlbumsState createState() => _TarjaAlbumsState();
}

class _TarjaAlbumsState extends State<TarjaAlbums> {
  List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 8.0),
        child: FutureBuilder(
                future: DefaultAssetBundle.of(context).loadString('assets/json/tarja_albums.json'),
                builder: (context, snapshot) {
                  List<TarjaAlbumJsonList> albums = parseJosn(snapshot.data.toString()); //var
                  return albums.isNotEmpty
                  //return !albums.isEmpty
                      ? TarjaAlbumsList(tarjaalbumlist: albums)
                      : Center(child: CircularProgressIndicator());
                }),
    ),);
  }
}