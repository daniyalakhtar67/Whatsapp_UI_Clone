import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController con = TextEditingController();
  File? pickedimage;

  void login(TextEditingController controller) {
    if (controller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Enter your name')),
      );
    } else {
      // yahan navigate ya save logic likho
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: InkWell(
          onTap: () {
            login(con); // ✅ ab call ho raha hai
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF00A884),
            ),
            child: Center(
              child: Text('Next', style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: Text('Profile info', style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              color: Color(0xFF00A884),
              fontSize: 20,
            )),
          ),
          SizedBox(height: 30),
          Text('Please provide your name and an optional', style: GoogleFonts.roboto(
            fontSize: 14,
            color: Colors.black38,
          )),
          Text('profile photo', style: GoogleFonts.roboto(
            fontSize: 14,
            color: Colors.black38,
          )),
          SizedBox(height: 30),
          InkWell(
            onTap: () {},
            child: GestureDetector(
              onTap: (){
                _openBottom(context);
              },
              child: pickedimage==null? CircleAvatar(

                radius: 70,
                backgroundColor: Color(0xFFD9D9D9),
                child: Image.asset('assets/images/photo-camera.png', height: 50, fit: BoxFit.cover),
              ) : CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedimage!),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded( // ✅ overflow fix
                  child: TextFormField(
                    controller: con,
                    decoration: InputDecoration(
                      hintText: 'Type your name here',
                      border: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF05AA82))),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF05AA82))),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF05AA82))),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset("assets/images/face.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
  _openBottom(BuildContext context){
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
              }, icon: Icon(Icons.camera_alt, size: 80,color: Colors.grey)),
                IconButton(onPressed: (){
                  _pickImage(ImageSource.gallery);
                }, icon:Icon(Icons.photo,color: Colors.grey,size: 80)),
              ],
            )
          ],
        ),
      );
    });
  }
  _pickImage(ImageSource imagesource)async{
    try{
      final photo = await  ImagePicker().pickImage(source: imagesource);
      if(photo == null)return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    }catch(ex){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.toString()),backgroundColor: Colors.red,));
    }
  }
}