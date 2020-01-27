import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_ui/favorite.dart';
import 'package:music_ui/music.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  child: _topSection("images/atif_album.jpg"),
                ),
              ],
            ),
            SizedBox(height: 50.0),
            Center(
              child: Text("Trending Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 3,
              padding: const EdgeInsets.all(1.5),
              primary: false,
              childAspectRatio: 0.80,
              mainAxisSpacing: 1.2,
              crossAxisSpacing: 1.2,
              children: <Widget>[
                _trending("images/trend_image1.jpg"),
                _trending("images/trend_image2.jpg"),
                _trending("images/trend_image3.jpg"),
                _trending("images/trend_image4.jpg"),
                _trending("images/trend_image5.jpg"),
                _trending("images/trend_image6.jpg"),
              ],
              shrinkWrap: true,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Weekly Charts",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                )),
                Text("More",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                )),

              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _weeklyImages("images/weekly_image1.jpg"),
                  SizedBox(width: 10),
                  _weeklyImages("images/weekly_image2.jpg"),
                  SizedBox(width: 10),
                  _weeklyImages("images/weekly_image3.jpg"),
                  SizedBox(width: 10),
                  _weeklyImages("images/weekly_image4.jpg"),
                  SizedBox(width: 10),
                  _weeklyImages("images/weekly_image5.jpg"),
                ],

              ),
            ),
            SizedBox(height: 20),
          ],
        ),
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
                      child:
                      Icon(Icons.music_note, color: Colors.black)),
                  title: Text('Home',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
              BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Music(),
                            ));
                      },
                      child: Icon(Icons.library_music, color: Colors.white)),
                  title: Text('Music',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
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
                  title: Text('Favorite',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
            ])
    );
  }
}

Widget _weeklyImages(String img) {
  return Container(
    height: 100,
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
      color: Colors.white,
    ),
  );
}

Widget _trending(String img) {
  return Container(
    height: 100,
    child: Card(
      color: Colors.white,
      child: Image.asset(
        img,
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget _topSection(String img) {
  return Container(
    height: 200,
    width: 400,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.fill,
      ),
      color: Colors.white,
    ),
  );
}
