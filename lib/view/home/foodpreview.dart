import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:krawia/Shared/addtocart.dart';
import 'package:krawia/Shared/carousel.dart';
import 'package:krawia/Shared/counter.dart';
import 'package:krawia/Shared/grilled.dart';
import 'package:krawia/Shared/orangecaontainer.dart';

class FoodPreview extends StatefulWidget {
  Color myColor = Colors.orange;
  bool colorisred = true;
  FoodPreview({this.colorisred});
  Widget statrs() {
    return Icon(
      Icons.star,
      color: Colors.amber,
      size: 30,
    );
  }

  @override
  _FoodPreviewState createState() => _FoodPreviewState();
}

class _FoodPreviewState extends State<FoodPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          caro(),
          Grilled(),
          
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 25,right: 10),
            child: Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Counter(),
               
               
                Text(
                  '\$ 1.02',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ExpandablePanel(
              header: Text(
                'Product details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              collapsed: Text(
                'more',
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              expanded: Text(
                'article article article  articleart iclearticlearti clearticlearticlearticle articlearticle   articlear  ticl earticl  earticlea  rticlear ticlearti  clearticle',
                softWrap: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Nutritions',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    OrangeContainer(name: '100 g',),
                    
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text('Review',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 126,
                ),
                widget.statrs(),
                SizedBox(
                  width: 10,
                ),
               widget.statrs(),
                SizedBox(
                  width: 10,
                ),
                widget.statrs(),
                SizedBox(
                  width: 10,
                ),
                widget.statrs(),
                SizedBox(
                  width: 10,
                ),
                widget.statrs(),
              ],
            ),
          ), SizedBox(height: 30,),
         Addtocartbuttom(name: 'add to cart',),
        ],
      ),
    );
  }
}
