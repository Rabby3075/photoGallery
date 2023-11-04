import 'package:flutter/material.dart';
import 'package:photo_gallary/Screen/photo.dart';
import 'package:photo_gallary/Screen/photo_details.dart';

class PhotoItem extends StatelessWidget {
  const PhotoItem({super.key, required this.photos});
  final Photos photos;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> PhotoDetails(photos: photos,)));
      },
      leading: Image.network(photos.thumbnailUrl),
      title: Text(photos.title),
    );
  }
}
