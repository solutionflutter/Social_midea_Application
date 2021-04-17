import 'package:flutter/material.dart';

class GoToLive extends StatefulWidget {
  @override
  _GoToLiveState createState() => _GoToLiveState();
}

class _GoToLiveState extends State<GoToLive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//Starting of the app bar
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width / 6,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Live',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 2.0, color: Colors.white),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.remove_red_eye),
                  SizedBox(
                    width: 10,
                  ),
                  Text('01'),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 100,
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width / 6,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Text(
                'End',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      //Ending of the app bar
      extendBodyBehindAppBar: true,
      //start the body
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
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('images/User_2.jpg')),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Hey guys',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('images/User_3.jpg')),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Hallow debra',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('images/User_4.jpg')),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Looking great',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black26,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      border: InputBorder.none,
                                      fillColor: Colors.transparent,
                                      hintText: 'Comment',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                      )),
                                )),
                                Icon(
                                  Icons.send,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.mic_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.card_giftcard_outlined,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
