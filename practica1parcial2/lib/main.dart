import 'package:flutter/material.dart';
import 'package:practica1parcial2/src/homepage_alternativo.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListeTitle app',
      home: HomePageAlternativo()
    );
  }
}
