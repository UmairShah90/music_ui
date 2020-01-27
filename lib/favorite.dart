import 'package:flutter/material.dart';
import 'package:music_ui/home.dart';
import 'package:music_ui/music.dart';


class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: 400,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/trend_image6.jpg'),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              SizedBox(height: 20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Atif Aslam",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 5.0),
                  Text("66,088,181 MONTHLY LISTENERS",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                      ))
                ],
              ),
              SizedBox(height: 15.0),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(Icons.swap_vertical_circle,
                                color: Colors.white),
                            SizedBox(height: 5.0),
                            Text(
                              "More",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.play_arrow, color: Colors.black),
                                  SizedBox(width: 10.0),
                                  Text(
                                    "Play",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  )
                                ],
                              ),
                            )),
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            SizedBox(height: 5),
                            Text("Follow",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ]))
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Top Tracks",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: Colors.grey[700],
                    // fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Column(
            children: <Widget>[
              _songname("Wohi Khuda Hai", "Atif Aslam", "1"),
              _songname("Zindagi Aa Raha Hn Me", "Atif Aslam", "2"),
              _songname("Dil Diyan Gallan", "Atif Aslam", "3"),
              _songname("Barishein", "Atif Aslam", "4"),
              _songname("Dekhte Dekhte", "Atif Aslam", "5"),
            ],
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
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                )),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Music(),
                          ));
                    },
                    child: Icon(Icons.library_music, color: Colors.white,)),
                title: Text(
                  'Music',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                )),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Favorite(),
                          ));
                    },
                    child: Icon(Icons.favorite_border,
                        color: Colors.black)),
                title: Text(
                  'Favorite',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                )),
          ],
        )
    );
  }
}
Widget _songname(String songName, String singer,String id)
{
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(id,style: TextStyle(color: Colors.grey[700],fontSize: 18),),
        SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(songName,style: TextStyle(color: Colors.white,fontSize: 19),),
            SizedBox(height: 5),
            Text(singer, style: TextStyle(color: Colors.grey[700])),
          ],
        ),

      ],
    ),
  );
}
