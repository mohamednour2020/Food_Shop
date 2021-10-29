import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krawia/Shared/categories.dart';
import 'package:krawia/Shared/foodcard.dart';
import 'package:krawia/Shared/meals.dart';
import 'package:krawia/Shared/photo.dart';
import 'package:krawia/Shared/searchbox.dart';

class homee extends StatefulWidget {
  const homee({Key key}) : super(key: key);

  @override
  _homeeState createState() => _homeeState();
}

class _homeeState extends State<homee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: Colors.grey[100],
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.notifications_none,
              size: 28,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 250,
            child: Text('Hand picked fresh items only for you !',
                maxLines: 3,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24)),
          ),
        ),
      ),
      body: ListView(
        children: [
          Searchbox(),
          SizedBox(height: 15,),
         
          Container(
              height: 110,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FoodCard();
                  })),
                  Categories(name: 'Categories',),
                  photoo(photourl: 'https://image.freepik.com/free-photo/kebab-platter-with-lamb-chicken-lula-tikka-kebabs-grilled-vegetables-with-red-onion-salad_141793-2251.jpg',),
          
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Deals',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            child: GridView.builder(
                itemCount: 11,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisExtent: 230,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Item_homescreen();
                }),
          )
        ],
      ),
    );
  }
}
