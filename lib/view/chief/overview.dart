import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krawia/Shared/photo.dart';

class Overview extends StatefulWidget {
  const Overview({Key key}) : super(key: key);

  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          photoo(
            photourl:
                'https://image.freepik.com/free-photo/top-view-table-full-delicious-food-assortment_23-2149141339.jpg',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                child: Text(
                  'MinI PIZZA is agood and fast meal it\'s delisous with barbecio sous and  pepsi ,i like it in pizza hut MinI PIZZA is agood and fast meal it\'s delisous with barbecio sous and  pepsi',
                  maxLines: 4,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12,left: 12,top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Prep Time',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('5 min',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Text('Cock Time',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    Text('1 min',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Text('Total Time',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    Text('6 min',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35,left: 35,top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('cusines :',style: TextStyle(fontSize: 16,),),
                    Text('Amircan Worled',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Text('Course :',style: TextStyle(fontSize: 16,)),
                    Text('Breakfast',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
               
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35,left: 35,top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('diet :',style: TextStyle(fontSize: 16,),),
                    Text('vegeterian',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Text('deffeculty level :',style: TextStyle(fontSize: 16,)),
                    Text('easy',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}
