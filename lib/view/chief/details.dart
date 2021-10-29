import 'package:flutter/material.dart';
import 'package:krawia/view/chief/Ingredints.dart';
import 'package:krawia/view/chief/overview.dart';
import 'package:krawia/view/chief/recipe.dart';
import 'package:krawia/view/chief/videos.dart';

class Detaild extends StatefulWidget {
  Color myColor = Colors.orange;
  

  @override
  _DetaildState createState() => _DetaildState();
}

class _DetaildState extends State<Detaild> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(initialIndex: 0,
    length: 4,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey[200],
        actions: [
          Container(
            color: Colors.grey[200],
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
        elevation: 0,
          title: Text('Mini Pizza recipe'),
          bottom: const TabBar(tabs: <Widget>[
            Tab(
              text: ('Overview'),
            ),
            Tab(
              text: ('Ingredints'),
            ),
            Tab(
              text: ('Video'),
            ),
            Tab(
              text: ('Recips '),
            ),
          ]),),
          body: TabBarView(children: <Widget>[
            Overview(),
            igredients(),
            videos(),
            recipe(),

          ],),
          
      ),
    );
  }
}
