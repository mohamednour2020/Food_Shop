import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krawia/Shared/addtocart.dart';
import 'package:krawia/Shared/counter.dart';
import 'package:krawia/Shared/photo.dart';

class igredients extends StatefulWidget {
  const igredients({Key key}) : super(key: key);

  @override
  _igredientsState createState() => _igredientsState();
}

class _igredientsState extends State<igredients> {
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
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text('Serving',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
                SizedBox(width: 10,),
                Counter(),
                ],
              
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 275),
            child: Addtocartbuttom(name: 'Shop ingredients',),
          )
        ],
      ),
    );
  }
}
