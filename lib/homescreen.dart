import 'package:flutter/material.dart';
import 'package:igreplica/bottombar.dart';

class HomeScreen extends StatefulWidget {
  final function;
  HomeScreen({this.function});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget story(name, dp) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[300],
                width: 3.0,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/$dp.jpg'),
              backgroundColor: Colors.cyan[100],
              radius: 30.0,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              // fontWeight: FontWeight.bold,
              // fontFamily: 'Rufina',
            ),
          ),
        ],
      ),
    );
  }

  Widget storyh() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          story('Apra', 'mypic1'),
          story('Manish', 'lolol'),
          story('Chetu', 'finally'),
          story('Mohit', 'mohitp'),
        ],
      ),
    );
  }

  Widget post(name, imagen, dp) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(7, 8, 0, 6),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/$dp.jpg'),
                backgroundColor: Colors.cyan[100],
                radius: 15.0,
              ),
              SizedBox(width: 8.0),
              Text(
                name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Image(
            image: AssetImage('images/$imagen.jpg'),
            width: double.maxFinite,
          ),
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.favorite_border, size: 40),
            SizedBox(width: 10),
            Icon(Icons.chat_bubble_outline, size: 40),
            SizedBox(width: 10),
            Icon(Icons.send, size: 40),
            Spacer(),
            Icon(Icons.bookmark_border, size: 40),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                color: Colors.black,
                fontSize: 45.0,
                fontFamily: 'Sacramento',
                fontWeight: FontWeight.w900,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: widget.function,
              child: Icon(
                Icons.send,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white60,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                storyh(),
                post('oye.abdul', 'mannnish', 'lolol'),
                post('apra_jain', 'mypost', 'mypic1'),
                post('manyaa_.', 'manyap', 'manyadp'),
                post('mks', 'mohitp', 'mohitp'),
                post('vinayak_', 'vinayakpost', 'vinayakpost'),
                post('chetuuu', 'chetupost', 'finally'),
              ],
            );
          }),
      bottomNavigationBar: BottomBar(),
    );
  }
}
