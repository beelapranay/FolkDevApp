import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

ClipRRect containerWidget(String text, String lights, String asset) {
  return ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
    child: Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 10,
            blurRadius: 12,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('Assets/$asset'),
          SizedBox(height: 10,),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 15
            )
          ),
          Text(
              lights,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: HexColor('#FFA939'),
                  fontSize: 12
              )
          )
        ],
      ),
    ),
  );
}

Container bottomNavBar() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset('Assets/bulb.svg'),
        SvgPicture.asset('Assets/Icon feather-home.svg'),
        SvgPicture.asset('Assets/Icon feather-settings.svg'),
      ],
    ),
  );
}

Padding roomMenu(String title, String asset) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      child: Container(
        width: 130,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('Assets/$asset.svg'),
            Text(
                title,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: HexColor('#0A4DA2'),
                    fontSize: 12
                )
            )
          ],
        ),
      ),
    ),
  );
}