import 'package:flutter/material.dart';
import 'package:female_metal_voices/albums.dart';
import 'package:url_launcher/url_launcher.dart';

class TarjaAlbumsList extends StatelessWidget {
  final List<TarjaAlbumJsonList> tarjaalbumlist;
  TarjaAlbumsList({Key key, this.tarjaalbumlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tarjaalbumlist.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(tarjaalbumlist[index].img),
              ),
              title: Text(tarjaalbumlist[index].name, style: TextStyle(fontSize: 20.0)),
              subtitle: Text(tarjaalbumlist[index].year, style: TextStyle(fontSize: 15.0)),
               onTap: () async {
                final tarjaUrl = tarjaalbumlist[index].url;
                if (await canLaunch(tarjaUrl)) {
                  await launch(tarjaUrl);
                }
                else {
                  throw 'Could not launch $tarjaUrl';
                }
              }
            );
        }
    );
  }
}