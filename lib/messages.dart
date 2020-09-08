import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  Widget dm(name, dp, msg) {
    return Card(
      elevation: 0.5,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(7, 8, 0, 6),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/$dp.jpg'),
              backgroundColor: Colors.cyan[100],
              radius: 30.0,
            ),
            SizedBox(width: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  //textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  msg,
                  //textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.camera_alt, size: 30, color: Colors.grey[600]),
            SizedBox(width: 6)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 40,
            ),
            SizedBox(width: 10),
            Text(
              'Direct',
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            Spacer(),
            Icon(Icons.videocam, size: 35, color: Colors.black),
            SizedBox(width: 10),
            Icon(Icons.edit, size: 33, color: Colors.black),
          ],
        ),
        backgroundColor: Colors.white60,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[500],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search,
                                size: 25, color: Colors.grey[700]),
                            SizedBox(width: 10),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 15, 8, 10),
                        child: Row(
                          children: [
                            Text(
                              'Messages',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '7 requests',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.lightBlue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      dm('Manya', 'manyadp', 'yhjvg'),
                      dm('Manish', 'lolol', 'hgcb'),
                      dm('Vinayak', 'vinayakpost', 'vgvftchn'),
                      dm('Chetu', 'finally', 'hvj kvcc'),
                      dm('Mohit', 'mohitp', 'gdciik'),
                      dm('Manya', 'manyadp', 'yhjvg'),
                      dm('Manish', 'lolol', 'hgcb'),
                      dm('Vinayak', 'vinayakpost', 'vgvftchn'),
                    ],
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            width: double.infinity,
            child: Icon(
              Icons.camera_alt,
              color: Colors.blue,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
