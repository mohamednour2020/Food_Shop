import 'package:flutter/material.dart';
import 'package:krawia/view/basket.dart';
import 'package:krawia/view/chief/chief.dart';
import 'package:krawia/view/fav.dart';
import 'package:krawia/view/home/home.dart';
import 'package:krawia/view/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color n = Colors.grey;
  int currentindex = 0;
  List<Widget> screens = [
    homee(),
    Chief(),
    Fav(),
    Basket(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: n,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lunch_dining,
              color: n,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: n,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: n,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: n,
            ),
            label: '',
          ),
        ],
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
            n = Colors.orange;
            selectedIconTheme:
            IconThemeData(color: Colors.orange, size: 40);
          });
        },
      ),
      body: screens[currentindex],
    );
  }
}
