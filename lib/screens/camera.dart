import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});


  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? imagepicker;

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
  _openButton(BuildContext context){
    return showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){
                  _pickImage(ImageSource.camera);
                }, icon: Icon(Icons.camera_alt)),
                IconButton(onPressed: (){
                  _pickImage(ImageSource.gallery);
                }, icon: Icon(Icons.photo)),
              ],
            )
          ],
        ),
      );
    });
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
                   _openButton(context);
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: imagepicker != null
                        ? FileImage(imagepicker!) as ImageProvider
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