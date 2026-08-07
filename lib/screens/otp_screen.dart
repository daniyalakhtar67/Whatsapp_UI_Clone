import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/screens/Profile_screen.dart';
import 'package:whatsapp_ui_clone/widgets/uihelper.dart';

class OtpScreen extends StatefulWidget {
   String phonenumber;
   OtpScreen({required this.phonenumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otp1 =  TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  TextEditingController otp5 = TextEditingController();
  TextEditingController otp6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
        },
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

              Text("You\'ve tried to register +92${widget.phonenumber}",style: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.black38,
              ),),
              Text('recently. Wait before requesting as sms or a call',style: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.black38,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('with your code. ',style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Colors.black38,
                  ),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },child: Text('Wrong number?',style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Color(0xFF00A884),
                  ),),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Uihelper.CustomContainer(otp1),
                  SizedBox(width: 10),
                  Uihelper.CustomContainer(otp2),
                  SizedBox(width: 10),
                  Uihelper.CustomContainer(otp3),
                  SizedBox(width: 10),
                  Uihelper.CustomContainer(otp4),
                  SizedBox(width: 10),
                  Uihelper.CustomContainer(otp5),
                  SizedBox(width: 10),
                  Uihelper.CustomContainer(otp6),
                ],
              ),
              SizedBox(height: 25 ),
              Text('Didn\'t receive Code',style: GoogleFonts.roboto(
                fontSize: 14,
                color: Color(0xFF00A884),
              ),)
            ],

          )
        ],
      ),
    );
  }
}
