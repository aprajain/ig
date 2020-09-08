import 'package:flutter/material.dart';
import 'package:igreplica/bottombar.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.search, size: 40, color: Colors.black),
            SizedBox(width: 10),
            Text(
              'Search',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 25,
                letterSpacing: 0.5,
                fontWeight: FontWeight.normal,
              ),
            ),
            Spacer(),
            Icon(
              Icons.center_focus_weak,
              color: Colors.black,
              size: 36,
            ),
          ],
        ),
        backgroundColor: Colors.white70,
      ),
      body: Wrap(
        spacing: 5,
        runSpacing: 5,
        children: [
          Image(
            image: AssetImage('images/mypost2.jpg'),
            width: MediaQuery.of(context).size.width * 0.32,
          ),
          Image(
            image: AssetImage('images/ethnic.jpg'),
            width: MediaQuery.of(context).size.width * 0.32,
          ),
          Image(
            image: AssetImage('images/mypost3.jpg'),
            width: MediaQuery.of(context).size.width * 0.32,
          ),
          Image(
            image: AssetImage('images/manyap.jpg'),
            width: MediaQuery.of(context).size.width * 0.32,
          ),
          Image(
            image: AssetImage('images/mannnish.jpg'),
            width: MediaQuery.of(context).size.width * 0.32,
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
