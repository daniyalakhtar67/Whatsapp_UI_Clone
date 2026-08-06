import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Uihelper {
  static CustomeButton({
    required VoidCallback callback,
    required String buttonname,
  }) {
    return SizedBox(
      height: 35,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        child: Text(
          buttonname,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  static CustomText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontweight,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(fontSize: height, color: color ?? Color(0xFF5E5E5E), fontWeight: fontweight),

    );
  }
}
