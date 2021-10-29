import 'package:flutter/material.dart';

class OrangeContainer extends StatelessWidget {
  String name;
  OrangeContainer({this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      child: Center(
          child: Text(
        name,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.orange),
    );
  }
}
