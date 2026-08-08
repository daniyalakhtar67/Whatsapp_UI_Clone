import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? imagepicker; // ✅ class-level field

  // ✅ function ab class ke andar hai
  _pickImage(ImageSource imagesourse) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesourse);
      if (photo == null) return;
      final tempimg = File(photo.path);
      setState(() {
        imagepicker = tempimg;
      });
    } catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(ex.toString()), backgroundColor: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    _pickImage(ImageSource.camera); // ✅ sahi function call
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: imagepicker != null
                        ? FileImage(imagepicker!) as ImageProvider // ✅ picked image dikhao
                        : NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGlJqTKVxuOxkKtEUSmydC2AntZwByplFHiH0-akZ2zg&s=10'),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xff00A884),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}