import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            "contact",
            style:  GoogleFonts.montserratAlternates(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ),
    );
  }
}