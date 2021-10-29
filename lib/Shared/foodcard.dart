import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  const FoodCard({Key key}) : super(key: key);

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(10)),
        height: 90,
        width: 100,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://image.freepik.com/free-photo/penne-pasta-tomato-sauce-with-chicken-tomatoes-wooden-table_2829-19744.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black),
              width: 100,
              height: 70,
            ),
            Center(
              child: Text(
                'pasta',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
