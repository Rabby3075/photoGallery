import 'package:flutter/material.dart';
import 'package:photo_gallary/Screen/photo_list_screen.dart';

void main() {
  runApp(const PhotoGallery());
}

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PhotoListscreen(),
    );
  }
}
