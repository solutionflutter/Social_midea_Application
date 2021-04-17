import 'package:flutter/material.dart';
import 'package:instagram_app/module/class.dart';

List<User> _users = [
  User(id: "User_1", family: 'Hodiseh'),
  User(id: "User_2", family: 'ui. street'),
  User(id: "User_3", family: 'Alireza'),
  User(id: "User_4", family: 'Muhammad'),
];

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: TextField(
          decoration:
              InputDecoration(border: InputBorder.none, hintText: 'Search'),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: _users.map((e) => UserAvatar(e)).toList(),
                    )
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset(
                  'images/User_1.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/User_2.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/User_4.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'images/User_3.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/User_2.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/User_1.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final User user;
  UserAvatar(this.user);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Column(
        children: [
          CircleAvatar(
            radius: 36,
            backgroundColor: Colors.red.shade200,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: Color.fromRGBO(56, 69, 81, 1),
              child: CircleAvatar(
                radius: 33,
                backgroundImage: AssetImage('images/${this.user.id}.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            '${this.user.family}',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
