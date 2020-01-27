import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_ui/favorite.dart';
import 'package:music_ui/home.dart';

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Music',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              labelText: 'Search...'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Featured",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 140.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _featured("images/gabrielle.jpg"),
                            SizedBox(height: 5.0),
                            Text(
                              'Gabriella',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3.0),
                            Text(
                              'The ChainSmoker',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _featured("images/havana.jpg"),
                            SizedBox(height: 5.0),
                            Text(
                              'Havana',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3.0),
                            Text(
                              'The Intruder',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _featured("images/joker.jpg"),
                            SizedBox(height: 5.0),
                            Text(
                              'Joker(* ^ *)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3.0),
                            Text(
                              'Slap that bass',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _featured("images/salena.jpg"),
                            SizedBox(height: 5.0),
                            Text(
                              'Salena',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3.0),
                            Text(
                              'Taki Taki',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _featured("images/sophia_grace.jpg"),
                            SizedBox(height: 5.0),
                            Text(
                              'Sophia',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3.0),
                            Text(
                              'Coffee And Beans',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _featured("images/vampire.jpg"),
                            SizedBox(height: 5.0),
                            Text(
                              'Vampire',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3.0),
                            Text(
                              'Vampire Diaries',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    color: Colors.grey[700],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Genres + Moods",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0)),
                      Text("View as list",
                          style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _generes("Hip-Hop"),
                        SizedBox(width: 8),
                        _generes("Hip-Hop"),
                        SizedBox(width: 8),
                        _generes("Pop"),
                        SizedBox(width: 8),
                        _generes("Dance"),
                        SizedBox(width: 8),
                        _generes("Solo"),
                        SizedBox(width: 8),
                        _generes("Rock"),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _generes("R&B / Soul"),
                        SizedBox(width: 8),
                        _generes("Rock"),
                        SizedBox(width: 8),
                        _generes("Hindi"),
                        SizedBox(width: 8),
                        _generes("English"),
                        SizedBox(width: 8),
                        _generes("Rock"),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.grey[700]),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Top Artist",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(color: Colors.grey, fontSize: 15.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 150.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _topArtists("images/atif.jpg"),
                        SizedBox(width: 9),
                        _topArtists("images/fawad.jpg"),
                        SizedBox(width: 9),
                        _topArtists("images/arihit.jpg"),
                        SizedBox(width: 9),
                        _topArtists("images/justin.jpg"),
                        SizedBox(width: 9),
                        _topArtists("images/malika.jpg"),
                        SizedBox(width: 9),
                        _topArtists("images/rahat.jpg"),
                        SizedBox(width: 9),
                        _topArtists("images/momina.jpg"),
                        SizedBox(width: 9),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.grey[700]),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Best Of",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0),
                      ),
                      Text(
                        "More",
                        style: TextStyle(color: Colors.grey, fontSize: 15.0),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 130,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _videos('images/arijit_collection.jpg'),
                        SizedBox(width: 10),
                        _videos('images/cokestudio.jpg'),
                        SizedBox(width: 10),
                        _videos('images/justin_collection.jpg'),
                        SizedBox(width: 10),
                        _videos('images/salena_collection.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.blueGrey,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                      },
                      child: Icon(Icons.music_note, color: Colors.white)),
                  title: Text('Home',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))),
              BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Music(),
                            ));
                      },
                      child: Icon(Icons.library_music, color: Colors.black)),
                  title: Text('Music',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold))),
              BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Favorite(),
                            ));
                      },
                      child: Icon(Icons.favorite_border, color: Colors.white)),
                  title: Text('Favorite',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))),
            ]));
  }

  Widget _videos(String img) {
    return Container(
      height: 140,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
          color: Colors.white),
    );
  }

  Widget _featured(String img) {
    return Container(
      height: 100,
      width: 120.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
          color: Colors.white),
    );
  }

  Widget _topArtists(String img) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
          color: Colors.white),
    );
  }

  Widget _generes(String name) {
    return Container(
      alignment: Alignment.center,
      width: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.grey),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
