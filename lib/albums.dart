import 'dart:convert';

class TarjaAlbumJsonList {
  final String name;
  final String img;
  final String year;
  final String url;

  TarjaAlbumJsonList({this.name, this.img, this.year, this.url});

  factory TarjaAlbumJsonList.fromJson(Map<String, dynamic> json) {
    return TarjaAlbumJsonList(
      name: json['album'] as String,
      img: json['img'] as String,
      year: json['year'] as String,
      url: json['url'] as String,
    );
  }
}

List<TarjaAlbumJsonList> parseJosn(String response) {
  if (response == null) {
    return [];
    }
  final parsed = json.decode(response.toString()).cast<Map<String, dynamic>>();
  return parsed.map<TarjaAlbumJsonList>((json) => TarjaAlbumJsonList.fromJson(json)).toList();
}