import 'package:flutter/material.dart';
import 'package:music_ui/favorite.dart';
import 'package:music_ui/home.dart';
import 'package:music_ui/music.dart';


void main() {
  runApp(MaterialApp(
    title: 'Music UI',
    debugShowCheckedModeBanner: false,
    initialRoute: '/music',
    routes: {
      '/music': (context) => Music(),
      '/home': (context) => Home(),
      '/favorite' : (context) => Favorite(),
    },


  ));
}


















