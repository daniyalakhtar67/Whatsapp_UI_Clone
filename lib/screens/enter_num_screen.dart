import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/screens/otp_screen.dart';

class EnterNumScreen extends StatefulWidget {
  const EnterNumScreen({super.key});

  @override
  State<EnterNumScreen> createState() => _EnterNumScreenState();
}

class _EnterNumScreenState extends State<EnterNumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
        },
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF00A884),
          ),
          child: Center(
            child: Text('Next',style: GoogleFonts.inter(
              fontSize: 14,
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
           child: Text('Enter you phone number',style: GoogleFonts.inter(
             fontWeight: FontWeight.bold,
             fontSize: 16,
             color: Color(0xFF00A884),
           ),),
         ),
         SizedBox(height: 30),
         Column(
           children: [
             Text('WhatsApp will need to verify your phone',style: GoogleFonts.roboto(
               color: Colors.black26,
               fontSize: 14,
             )),
             Text('number. Carrier charges may apply.',style:GoogleFonts.roboto(
               color: Colors.black26,
               fontSize: 14,
             )),
             Text('What\'s my number?',style: GoogleFonts.roboto(
               color: Color(0xFF00A884),
               fontSize: 14,
             ),)

           ],
         )
       ],
     ),
    );
  }
}