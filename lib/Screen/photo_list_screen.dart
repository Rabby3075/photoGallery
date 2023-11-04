import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:photo_gallary/Screen/photo.dart';
import 'package:photo_gallary/Widget/photo_item.dart';

class PhotoListscreen extends StatefulWidget {
  const PhotoListscreen({super.key});

  @override
  State<PhotoListscreen> createState() => _PhotoListscreenState();
}

class _PhotoListscreenState extends State<PhotoListscreen> {
  List<Photos> photoList = [];
  @override
  void initState() {
    getPhotos();
    // TODO: implement initState
    super.initState();
  }

  void getPhotos() async {
    photoList.clear();
    setState(() {});
    Response response = await get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos'),
    );
    print(response.statusCode);
    // print(photoList.length);
    print(response.body);
    if (response.statusCode == 200) {
      List<dynamic> responseData = jsonDecode(response.body);
      for (Map<String, dynamic> photosJson in responseData) {
        photoList.add(Photos.fromJson(photosJson));
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Gallery App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return PhotoItem(photos: photoList[index]);
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: photoList.length,
        ),
      ),

    );
  }
}
