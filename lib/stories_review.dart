import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_app/stories_capture.dart';
import 'package:instagram_app/story_page.dart';

class StoriesReview extends StatefulWidget {
  @override
  _StoriesReviewState createState() => _StoriesReviewState();
}

class _StoriesReviewState extends State<StoriesReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StoriesCapture())),
              child: Icon(Icons.close)),
        ),
        extendBodyBehindAppBar: true,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/User_1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.save_alt,
                                color: Colors.white70,
                                size: 20,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Save',
                                style: GoogleFonts.roboto(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                CupertinoIcons.add_circled,
                                color: Colors.white70,
                                size: 20,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Your story',
                                style: GoogleFonts.roboto(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Storypage())),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.height / 7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white70),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Next',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12, color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
