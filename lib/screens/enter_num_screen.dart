import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterNumScreen extends StatefulWidget {
  const EnterNumScreen({super.key});

  @override
  State<EnterNumScreen> createState() => _EnterNumScreenState();
}

class _EnterNumScreenState extends State<EnterNumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter your phone number',
          style: GoogleFonts.inter(
            fontSize: 16,
            color: Color(0xFF00A884),
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}