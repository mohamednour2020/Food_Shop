import 'package:flutter/material.dart';

class Addtocartbuttom extends StatelessWidget {
  String name;
  Addtocartbuttom({ this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          child: Center(
              child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
          height: 60,
          width: MediaQuery.of(context).size.width-30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orange,
          )),
    );
  }
}
