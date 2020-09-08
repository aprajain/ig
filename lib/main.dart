import 'package:flutter/material.dart';
import 'package:igreplica/activity.dart';
import 'homescreen.dart';
import 'messages.dart';
import 'profilepage.dart';
import 'explore.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Homepage(),
      '/explore': (context) => Explore(),
      '/activity': (context) => Activity(),
      '/profile': (context) => ProfilePage(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController pagePC = PageController(initialPage: 0);

  void pageChange() {
    pagePC.animateToPage(1,
        duration: Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pagePC,
      children: <Widget>[
        HomeScreen(
          function: pageChange,
        ),
        Messages(),
        // Explore(),
        // Activity(),
        // ProfilePage(),
      ],
    );
  }
}
