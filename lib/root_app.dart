import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:instagram_app/Home_page.dart';
import 'package:instagram_app/account_page.dart';
import 'package:instagram_app/activity_page.dart';
import 'package:instagram_app/new_post_page.dart';
import 'package:instagram_app/serch_page.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int page = 0;
  List pageOptions = [
    HomePage(),
    SearchPage(),
    NewPostPage(),
    ActivityPage(),
    AccountPage(),
  ];

  customIcon() {
    return Container(
        width: 45,
        height: 25,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 40,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 45, 100),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 40,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 210, 234),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Center(
                child: Container(
              height: double.infinity,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.add, size: 20),
            ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOptions[page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade400,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black, size: 25),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined, color: Colors.black, size: 25),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart, color: Colors.black, size: 25),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined,
                  color: Colors.black, size: 25),
              label: ''),
        ],
      ),
    );
  }
}
