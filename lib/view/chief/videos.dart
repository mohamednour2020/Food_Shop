import 'package:flutter/material.dart';
import 'package:krawia/Shared/addtocart.dart';
import 'package:krawia/Shared/photo.dart';

class videos extends StatefulWidget {
  const videos({Key key}) : super(key: key);

  @override
  _videosState createState() => _videosState();
}

class _videosState extends State<videos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          photoo(
            photourl:
                'https://image.freepik.com/free-photo/penne-pasta-tomato-sauce-with-chicken-tomatoes-wooden-table_2829-19744.jpg',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 12),
            child: Row(
              children: [
                Text('Red sauce Pasts',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                child: Text(
                  'Mini PIZZA is agood and fast meal it\'s delisous with barbecio sous and  pepsi ,i like it in pizza hut MinI PIZZA is agood and fast meal it\'s delisous with barbecio sous and  pepsi',
                  maxLines: 4,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[600]),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210),
            child: Addtocartbuttom(name: 'View More Recepis',),
          )
        ],
      ),
    );
  }
}
