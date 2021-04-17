import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:photofilters/photofilters.dart';
import 'package:image/image.dart' as imageLib;
import 'package:image_picker/image_picker.dart';

class ImagePickerFilter extends StatefulWidget {
  @override
  _ImagePickerFilterState createState() => _ImagePickerFilterState();
}

class _ImagePickerFilterState extends State<ImagePickerFilter> {
  imageLib.Image _image;
  String fileName;
  Filter _filter;
  List<Filter> filters = presetFiltersList;

  Future getImage() async {
    var imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    fileName =  basename(imageFile.path);
    var image = imageLib.decodeImage(imageFile.readAsBytesSync());
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 350,
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height / 9,
            width: MediaQuery.of(context).size.width / 9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(450),
                color: Colors.black87),
            child: IconButton(
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white70,
                ),
                onPressed: () {
                  getImage();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new PhotoFilterSelector(
                                title: Text("Photo Filter"),
                                image: _image,
                                filters: filters,
                                filename: fileName,
                                loader:
                                    Center(child: CircularProgressIndicator()),
                                fit: BoxFit.contain,
                              )));
                }),
          ),
        ],
      ),
    );
  }
}
