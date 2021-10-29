import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class caro extends StatelessWidget {
  const caro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        height: 300.0,
        width: 300.0,
        child: Carousel(
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 2000),
          dotSize: 7.0,
          dotIncreasedColor: Colors.orange,
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomCenter,
          dotVerticalPadding: -0.0,
          showIndicator: true,
          indicatorBgPadding: 6.0,
          images: [
            NetworkImage(
                'https://img.freepik.com/free-photo/christmas-table-served-with-turkey-decorated-with-bright-tinsel-candles_2829-18829.jpg?size=338&ext=jpg'),
            NetworkImage(
                'https://img.freepik.com/free-photo/grilled-chicken-with-fried-potatoes_181624-1168.jpg?size=338&ext=jpg'),
            NetworkImage(
                'https://image.freepik.com/free-photo/baked-chicken-tabaka-with-spices_1220-4968.jpg'),
            NetworkImage(
                'https://img.freepik.com/free-photo/delicious-chicken-table_144627-8758.jpg?size=338&ext=jpg'),
          ],
        ));
  }
}
