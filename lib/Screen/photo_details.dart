import 'package:flutter/material.dart';
import 'package:photo_gallary/Screen/photo.dart';

class PhotoDetails extends StatelessWidget {
  const PhotoDetails({super.key, this.photos});
  final Photos? photos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(photos!.thumbnailUrl),
            Text('Title: ${photos?.title}'),
            Text('Id: ${photos?.id}'),
          ],
        ),
      ),
    );
  }
}
