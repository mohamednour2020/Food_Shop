import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(15)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.remove,
            color: Colors.white,
          ),
          Text('  1  ',
              style: TextStyle(
                color: Colors.white,
              )),
          Icon(
            Icons.add,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
