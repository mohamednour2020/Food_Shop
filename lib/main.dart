import 'package:flutter/material.dart';
import 'package:krawia/homepage.dart';

void main(List<String> args) {
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({ Key key }) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      home:HomeScreen() ,
      
    );
  }
}