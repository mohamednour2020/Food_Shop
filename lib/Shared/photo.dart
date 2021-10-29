import 'package:flutter/material.dart';

class photoo extends StatelessWidget {
  String photourl;
  photoo({this.photourl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width - 10,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    photourl??'')),
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
