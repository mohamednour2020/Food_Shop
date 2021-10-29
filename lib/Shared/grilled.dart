import 'package:flutter/material.dart';

class Grilled extends StatefulWidget {
   Color myColor = Colors.orange;
  

  @override
  State<Grilled> createState() => _GrilledState();
}

class _GrilledState extends State<Grilled> {
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Griled chekin',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text('1 kg, grilled')
            ],
          ),
          Container(
            color: Colors.grey[100],
            child: IconButton(
                onPressed: () {
                  setState(() {
                    widget.myColor == Colors.white
                        ? widget.myColor = Colors.orange
                        : widget.myColor = Colors.white;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: widget.myColor,
                  size: 35,
                )),
          ),
        ],
      ),
    );
  }
}
