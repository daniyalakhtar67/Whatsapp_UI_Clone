import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF00A884),
            ),
            child: Center(
              child: Text('Next',style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
          ),

      ),
      ),
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: Text('Profile info',style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              color: Color(0xFF00A884),
              fontSize: 16,
            ),),
          ),
          SizedBox(height: 30),
          Text('Please provide your name and an optional',style: GoogleFonts.roboto(
            fontSize: 14,
            color: Colors.black38,
          ),),
          Text('profile photo',style: GoogleFonts.roboto(
            fontSize: 14,
            color: Colors.black38,
          )),
        ],
      ),
    );
  }
}
