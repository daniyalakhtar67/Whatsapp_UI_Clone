import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/screens/enter_num_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterNumScreen()));
          },
          child: Container(
            width: 30,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF00A884),
            ),
            child: Center(
              child: Text('Agree and continue',style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.white,

              ),),
            )
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/welcome.png'))
              ),
            ),
          ),
          SizedBox(height: 10),
          Text('Welcome to WhatsApp',style: GoogleFonts.inter(fontSize: 20)),
          SizedBox(height: 10),
          RichText(text: TextSpan(
            style: GoogleFonts.roboto(
                fontSize:14,
                color: Colors.black26,
            ),
          children: [
            TextSpan(
              text: 'Read out',
            ),
            TextSpan(
              text: ' Privacy Policy.',
              style: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.blue,
              )
            ),
            TextSpan(
              text: 'Tap "Agree and continue"',
            ),
            WidgetSpan(child: SizedBox(height: 8)),
            TextSpan(

              text: ('\n               to accept the'),
            ),
            TextSpan(
              style: GoogleFonts.roboto(
                color: Colors.blue,
                fontSize: 14,
              ),
              text: ' Teams of Service.'
            )
          ]
          ))
        ],
      ),
    );
  }
}
