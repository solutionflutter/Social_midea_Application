import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_app/Home_page.dart';
import 'package:instagram_app/Messenger.dart';
import 'package:instagram_app/business_account_page.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  customIcon() {
    return Container(
      width: MediaQuery.of(context).size.width / 16,
      height: MediaQuery.of(context).size.width / 16,
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 2,
            backgroundColor: Colors.black87,
          ),
          SizedBox(
            height: 4,
          ),
          CircleAvatar(
            radius: 2,
            backgroundColor: Colors.black87,
          ),
          SizedBox(
            height: 4,
          ),
          CircleAvatar(
            radius: 2,
            backgroundColor: Colors.black87,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text('Jeffrey_gerson',
            style: GoogleFonts.roboto(fontSize: 25, color: Colors.black87)),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BusinessAccountPage()));
            },
            child: customIcon(),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red.shade200,
                    child: CircleAvatar(
                      radius: 48,
                      backgroundColor: Color.fromRGBO(56, 69, 81, 1),
                      child: CircleAvatar(
                        radius: 46,
                        backgroundImage: AssetImage('images/User_1.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "334",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "posts",
                        style: GoogleFonts.roboto(
                            fontSize: 12, color: Colors.black87),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Messenger())),
                        child: Container(
                          margin: EdgeInsets.all(18),
                          height: MediaQuery.of(context).size.height / 24,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black87)),
                          child: Center(
                            child: Text(
                              'Message',
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.black87),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "211k",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "followers",
                        style: GoogleFonts.roboto(
                            fontSize: 12, color: Colors.black87),
                      ),
                      Container(
                          margin: EdgeInsets.all(18),
                          height: MediaQuery.of(context).size.height / 24,
                          width: MediaQuery.of(context).size.width / 12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black87)),
                          child: Center(
                              child: Icon(
                            CupertinoIcons.person,
                          )))
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "211",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "following",
                        style: GoogleFonts.roboto(
                            fontSize: 12, color: Colors.black87),
                      ),
                      Container(
                          margin: EdgeInsets.all(18),
                          height: MediaQuery.of(context).size.height / 24,
                          width: MediaQuery.of(context).size.width / 14,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black87)),
                          child: Center(
                              child: Icon(
                            Icons.arrow_drop_down,
                          )))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jeffrey Gerson',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black)),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Software Engineer',
                          style: GoogleFonts.roboto(
                              fontSize: 14, color: Colors.black26)),
                      SizedBox(
                        height: 5,
                      ),
                      Text('blog.sofiya.com',
                          style: GoogleFonts.roboto(
                              fontSize: 14, color: Colors.blue)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.red.shade200,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundColor: Color.fromRGBO(56, 69, 81, 1),
                    child: CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('images/User_1.jpg'),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.red.shade200,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundColor: Color.fromRGBO(56, 69, 81, 1),
                    child: CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('images/User_2.jpg'),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.red.shade200,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundColor: Color.fromRGBO(56, 69, 81, 1),
                    child: CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('images/User_3.jpg'),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.red.shade200,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundColor: Color.fromRGBO(56, 69, 81, 1),
                    child: CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('images/User_4.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.list_outlined,
                    size: 25,
                  ),
                  Icon(
                    Icons.format_list_bulleted_rounded,
                    size: 25,
                  ),
                  Icon(
                    Icons.person_pin_rounded,
                    size: 25,
                  ),
                ],
              ),
            ),
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
            Image.asset(
              'images/User_3.jpg',
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
