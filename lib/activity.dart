import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:igreplica/bottombar.dart';

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity',
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
              fontWeight: FontWeight.w500,
            )),
        backgroundColor: Colors.white70,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 15, 5),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 30,
                            ),
                          ),
                          Positioned(
                            right: -5,
                            top: 2,
                            child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: Text('677',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ))),
                          ),
                        ],
                        overflow: Overflow.visible,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Follow requests',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(height: 3),
                        Text('Approve or ignore requests',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            );
          }),
      bottomNavigationBar: BottomBar(),
    );
  }
}
