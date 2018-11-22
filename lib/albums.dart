class Album {
  final String band;
  final String name;
  final String year;
  final int score;
  final String img;
  final String domain;

  const Album(
    {this.band,
      this.name,
      this.year,
      this. score,
      this.img,
      this.domain
    }
  );
}

final albums = [
  Album(
    band: "Tarja",
    name: "My Winter Storm",
    year: "2007",
    score: 9,
    img: "assets/_2007_mws.jpg",
    domain: "https://en.wikipedia.org/wiki/My_Winter_Storm"
  ),

  Album(
    band: "Tarja",
    name: "What Lies Beneath",
    year: "2010",
    score: 6,
    img: "assets/_2010_wlb.jpg",
    domain: "https://en.wikipedia.org/wiki/What_Lies_Beneath_(Tarja_album)"
  ),

  Album(
    band: "Tarja",
    name: "Act I",
    year: "2012",
    score: 6,
    img: "assets/_2012_act11.jpg",
    domain: "https://en.wikipedia.org/wiki/Act_I:_Live_in_Rosario"
  ),

  Album(
    band: "Tarja",
    name: "Colours in the Dark",
    year: "2013",
    score: 7,
    img: "assets/_2013_citd.jpg",
    domain: "https://en.wikipedia.org/wiki/Colours_in_the_Dark_(album)"
  ),
 
    Album(
    band: "Tarja",
    name: "The Shadow Self",
    year: "2016",
    score: 7,
    img: "assets/_2016_tss.jpg",
    domain: "https://en.wikipedia.org/wiki/The_Shadow_Self"
  ),
];