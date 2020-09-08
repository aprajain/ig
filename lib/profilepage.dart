import 'package:flutter/material.dart';
import 'package:igreplica/bottombar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget info(title, value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 6),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            //letterSpacing: 0.3,
          ),
        ),
      ],
    );
  }

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
              fontSize: 16.0,
              // fontWeight: FontWeight.bold,
              // fontFamily: 'Rufina',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Row(
            children: [
              Text(
                'apra_jain_',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0,
                  //fontFamily: 'Sacramento',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 5),
              Icon(Icons.keyboard_arrow_down, size: 18, color: Colors.black),
              Spacer(),
              Icon(Icons.dehaze, size: 22, color: Colors.black),
            ],
          ),
        ),
        backgroundColor: Colors.white54,
        elevation: 0,
        toolbarHeight: 33,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.fromLTRB(10, 17, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //SizedBox(width: 4),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/mypic1.jpg'),
                        radius: 45,
                      ),
                      SizedBox(width: 15),
                      info('Posts', '5'),
                      info('Followers', '527'),
                      info('Following', '170'),
                    ],
                  ),
                  SizedBox(height: 13),
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apra Jain',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Ex-Marisian  ||   Ex-Cmsian',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Pizza>>People',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 4, bottom: 4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[500],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5.2),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              size: 48,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10.5),
                          Text(
                            'New',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                      story('random', 'mypic2'),
                      story('Babez', 'manyap'),
                      story('love', 'finally'),
                    ],
                  ),
                  Divider(
                    height: 25,
                    color: Colors.grey[500],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.grid_on,
                        color: Colors.black,
                        size: 30,
                      ),
                      Icon(
                        Icons.assignment_ind,
                        color: Colors.grey[500],
                        size: 30,
                      ),
                    ],
                  ),
                  Divider(
                    height: 25,
                    color: Colors.grey[500],
                  ),
                  Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      Image(
                        image: AssetImage('images/mypost2.jpg'),
                        width: MediaQuery.of(context).size.width * 0.29,
                      ),
                      Image(
                        image: AssetImage('images/ethnic.jpg'),
                        width: MediaQuery.of(context).size.width * 0.29,
                      ),
                      Image(
                        image: AssetImage('images/mypost3.jpg'),
                        width: MediaQuery.of(context).size.width * 0.29,
                      ),
                      Image(
                        image: AssetImage('images/mypic1.jpg'),
                        width: MediaQuery.of(context).size.width * 0.29,
                      ),
                      Image(
                        image: AssetImage('images/mypic2.jpg'),
                        width: MediaQuery.of(context).size.width * 0.29,
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
      bottomNavigationBar: BottomBar(),
    );
  }
}
