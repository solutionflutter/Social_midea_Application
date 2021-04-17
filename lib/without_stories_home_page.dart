import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_app/Home_page.dart';
import 'package:instagram_app/Image_picker.dart';
import 'package:instagram_app/module/class.dart';
import 'package:instagram_app/root_app.dart';
import 'package:instagram_app/story_page.dart';

List<User> _users = [
  User(id: "User_1", family: 'Hodiseh'),
  User(id: "User_2", family: 'ui. street'),
  User(id: "User_3", family: 'Alireza'),
  User(id: "User_4", family: 'Muhammad'),
];

List<Post> _posts = [
  Post(userid: 5, id: "User_1", title: "Hodiseh", UserLiked: "123"),
  Post(userid: 2, id: "User_2", title: "Test", UserLiked: "1234"),
  Post(userid: 1, id: "User_3", title: "Coro", UserLiked: "1234"),
  Post(userid: 1, id: "User_4", title: "Messanger", UserLiked: "12345"),
];

class WithoutStoriesHomePage extends StatefulWidget {
  @override
  _WithoutStoriesHomePageState createState() => _WithoutStoriesHomePageState();
}

class _WithoutStoriesHomePageState extends State<WithoutStoriesHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          'Instagram',
          style: GoogleFonts.dancingScript(fontSize: 25, color: Colors.black87),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.camera_alt_outlined,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ImagePickerFilter()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.live_tv, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.send_outlined,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: _posts.map((e) => UserPost(post: e)).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class UserPost extends StatelessWidget {
  final Post post;
  UserPost({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/${this.post.id}.jpg'),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                  '${_users.where((element) => element.id == this.post.id).first.family}'),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RootApp()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 16,
                  height: MediaQuery.of(context).size.width / 16,
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
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/${this.post.id}.jpg'),
                fit: BoxFit.cover),
          ),
          height: 300,
          width: MediaQuery.of(context).size.width,
        ),
        Row(
          children: [
            IconButton(
                icon: Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.black,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  CupertinoIcons.chat_bubble_text,
                  color: Colors.black,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.send_outlined,
                  color: Colors.black,
                ),
                onPressed: () {}),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.black,
                ),
                onPressed: null)
          ],
        ),
        SizedBox(
          height: 3,
        ),
        Container(
          margin: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    CupertinoIcons.heart,
                    color: Colors.black,
                    size: 12,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text("${this.post.UserLiked}"),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                      '${_users.where((element) => element.id == this.post.id).first.family} Missing Someone post'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
