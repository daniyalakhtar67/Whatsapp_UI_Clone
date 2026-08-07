import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/screens/otp_screen.dart';

class EnterNumScreen extends StatefulWidget {
  const EnterNumScreen({super.key});

  @override
  State<EnterNumScreen> createState() => _EnterNumScreenState();
}

class _EnterNumScreenState extends State<EnterNumScreen> {
  String selectedCountry = 'Pakistan';
  List<String> countries = [
    "Pakistan",
    "India",
    "America",
    "Italy",
    "Germany",
    "Dubai",
    "Saudia",
  ];
  void login(String phonenumber){
    if(phonenumber.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Center(child: Text('Enter your Number',style: TextStyle(
        color: Colors.red,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),))));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
    }
  }
  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: InkWell(
          onTap: () {
          login(number.text);
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF00A884),
            ),
            child: Center(
              child: Text('Next', style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: Text('Enter you phone number', style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF00A884),
            )),
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Text('WhatsApp will need to verify your phone', style: GoogleFonts.roboto(
                color: Colors.black26,
                fontSize: 14,
              )),
              Text('number. Carrier charges may apply.', style: GoogleFonts.roboto(
                color: Colors.black26,
                fontSize: 14,
              )),
              Text('What\'s my number?', style: GoogleFonts.roboto(
                color: Color(0xFF00A884),
                fontSize: 14,
              )),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 50),
                child: DropdownButtonFormField(
                  items: countries.map((String country) {
                    return DropdownMenuItem(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCountry = value as String;
                    });
                  },
                  value: selectedCountry,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00A884),
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00A884),
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  SizedBox(
                    width: 40,
                    child: TextFormField(
                      keyboardType: TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                        hintText: '+92',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00A884),
                          )
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00A884),
                          )
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00A884),
                          )
                        )
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 240,
                    child: TextFormField(
                      controller: number,
                      keyboardType: TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00A884),
                          )
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00A884),
                          )
                        )
                      ),
                    ),
                  )
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}