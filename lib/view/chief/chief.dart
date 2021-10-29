import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:krawia/Shared/categories.dart';
import 'package:krawia/Shared/foodcard.dart';
import 'package:krawia/Shared/orangecaontainer.dart';
import 'package:krawia/Shared/photo.dart';
import 'package:krawia/Shared/searchbox.dart';
import 'package:krawia/view/chief/details.dart';

class Chief extends StatefulWidget {
  const Chief({Key key}) : super(key: key);

  @override
  _ChiefState createState() => _ChiefState();
}

class _ChiefState extends State<Chief> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Center(
          child: Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 120, left: 10, top: 10),
            child: Container(
              child: Text('choose your one from +1000 repecies',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Searchbox(),
          Categories(
            name: 'categories',
          ),
          Container(
              height: 110,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FoodCard();
                  })),
          Categories(
            name: 'Popular receips',
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Detaild()));
            },
            child: photoo(
              photourl:
                  'https://image.freepik.com/free-photo/top-view-table-full-delicious-food-assortment_23-2149141339.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('fresh breakfast',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 10,
                ),
                OrangeContainer(
                  name: 'new',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text('data, dart ,data', style: TextStyle(fontSize: 15)),
          ),
          photoo(
            photourl:
                'https://image.freepik.com/free-photo/penne-pasta-tomato-sauce-with-chicken-tomatoes-wooden-table_2829-19744.jpg',
          ),
        ],
      ),
    );
  }
}
