import 'package:flutter/material.dart';
import 'package:krawia/view/home/foodpreview.dart';

// ignore: camel_case_types, must_be_immutable
class Item_homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FoodPreview()));
      },
      child: Expanded(
        child: Container(
          height: 240,
          width: MediaQuery.of(context).size.width / 2 - 80,
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    color: Colors.grey,
                                    offset: Offset(1.5, 1.5)),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 200,
                          width: MediaQuery.of(context).size.width / 2 - 30)
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              spreadRadius: 1,
                              color: Colors.grey,
                              offset: Offset(1.5, 1.5)),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(60, 203, 156, 5),
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/christmas-table-served-with-turkey-decorated-with-bright-tinsel-candles_2829-18829.jpg?size=338&ext=jpg'),
                        radius: 60,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'chicken',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'chicken,onion,tomato',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25, left: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$3.50',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            InkWell(
                              child: Container(
                                child: Center(
                                    child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.orange),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
