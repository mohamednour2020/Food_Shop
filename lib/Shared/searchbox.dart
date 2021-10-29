import 'package:flutter/material.dart';

class Searchbox extends StatefulWidget {
  @override
  _SearchboxState createState() => _SearchboxState();
}

class _SearchboxState extends State<Searchbox> {
  var searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.white,
            width: 340,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'search for any thing.',
                contentPadding: EdgeInsets.symmetric(horizontal: 5),
                // // border: OutlineInputBorder(
                // //   borderSide: BorderSide(color: Colors.transparent),
                  
                // ),
               
                enabledBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 0),
            
            
          ),
              ),
            ),
          ),
          Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.format_list_numbered_rtl_sharp),
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
