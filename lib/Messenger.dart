import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_app/Messages.dart';
import 'package:instagram_app/root_app.dart';

class Messenger extends StatefulWidget {
  @override
  _MessengerState createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => RootApp()))),
        title: Text(
          'Direct',
          style: GoogleFonts.roboto(fontSize: 20, color: Colors.black),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.add,
                size: 20,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, left: 25, right: 25),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: Colors.black87,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Serch",
                      style: GoogleFonts.roboto(
                          fontSize: 15, color: Colors.black)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, right: 25, left: 25),
              child: Row(
                children: [
                  Text('MESSAGES',
                      style: GoogleFonts.roboto(
                          fontSize: 20, color: Colors.black54)),
                  Spacer(),
                  Text('0 Requests',
                      style: GoogleFonts.roboto(
                          fontSize: 20, color: Colors.black)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Messages()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.red.shade200,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromRGBO(56, 69, 81, 1),
                            child: CircleAvatar(
                              radius: 23,
                              backgroundImage: AssetImage('images/User_1.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hello Dear',
                          style: TextStyle(color: Colors.black),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
