import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 2,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            icon: Icon(Icons.home),
            color: Colors.black,
            iconSize: 35,
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/explore');
              },
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              )),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
            color: Colors.black,
            size: 35,
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/activity');
              },
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 35,
              )),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/profile');
              },
              icon: Icon(
                Icons.person,
                color: Colors.black,
                size: 35,
              )),
          title: Container(),
        ),
      ],
    );
  }
}
