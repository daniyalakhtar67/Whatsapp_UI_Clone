import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 50,
          height: 45,
          decoration: BoxDecoration(
            color: Color(0xFF00A884),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text('Next',style: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
      ),
      ),

      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: Center(
              child: Text('Verifying your number',style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                color: Color(0xFF00A884),
                fontSize: 16,
              )),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Text('You\'ve tried to register +923199444096',style:
              GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.black26,
              )),
              Text('recently. Wait before requesting as sms or a call',style:   GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.black26,
              )),
              RichText(text: TextSpan(
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: Colors.black26,
                ),
                children: [
                  TextSpan(
                    text: 'with your code.',
                  ),
                  TextSpan(
                    text: ' Wrong number?',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Color(0xFF00A884),
                    )
                  )
                ]
              ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
