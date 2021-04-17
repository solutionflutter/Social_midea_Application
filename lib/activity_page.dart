import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  'images/Market_1.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/Market_2.jpg',
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
                  'images/User_1.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/Market_3.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/Market_4.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'images/Market_3.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/Market_5.jpg',
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
                  'images/Market_1.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/User_3.jpg',
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
          ],
        ),
      ),
    );
  }
}
