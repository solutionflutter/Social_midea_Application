import 'package:flutter/cupertino.dart';

class User {
  String id;
  String family;
  User({@required this.id, this.family});
}

class Post {
  int userid;
  String id;
  String title;
  String UserLiked;

  Post({@required this.id, this.title, this.userid, this.UserLiked});
}
