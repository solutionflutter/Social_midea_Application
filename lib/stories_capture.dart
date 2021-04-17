import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/root_app.dart';
import 'package:instagram_app/stories_review.dart';

class StoriesCapture extends StatefulWidget {
  @override
  _StoriesCaptureState createState() => _StoriesCaptureState();
}

class _StoriesCaptureState extends State<StoriesCapture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RootApp())),
              child: Icon(CupertinoIcons.arrow_left)),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.check_box_outline_blank_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                          Icon(
                            Icons.flash_on_sharp,
                            color: Colors.white,
                            size: 35,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoriesReview()));
                            },
                            child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white54,
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                )),
                          ),
                          Icon(
                            Icons.refresh_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                          Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.white,
                            size: 35,
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
