import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'ReusableWidgets.dart';

class Room extends StatefulWidget {

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {

  double _currValue = 40;
  String color = '#FFFF00';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0A4DA2'),
      body: Stack(
        children: [
          SvgPicture.asset('Assets/Circles.svg'),
          Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bed\nRoom', style: GoogleFonts.poppins(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor(color),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red,
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  15.0, // Move to right 10  horizontally
                                  15.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ]
                          ),
                          height: 25,
                          width: 25,
                        ),
                      ),
                      SvgPicture.asset('Assets/light bulb.svg'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Container(
                    height: 60,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        roomMenu('Main Light', 'surface1'),
                        roomMenu('Bed Light', 'bed (1)'),
                        roomMenu('Desk Light', 'bed (1)')
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                      child: Container(
                        color: HexColor('#F6F8FB'),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Intensity',
                                  style: GoogleFonts.poppins(color: HexColor('#0A4DA2'), fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset('Assets/solution2.svg'),
                                  Expanded(
                                    child: Slider(
                                        value: _currValue,
                                        thumbColor: Colors.white,
                                        min: 0,
                                        activeColor: Colors.yellow,
                                        inactiveColor: Colors.grey,
                                        max: 100,
                                        divisions: 5,
                                        onChanged: (double value) {
                                          setState(() {
                                          _currValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                  SvgPicture.asset('Assets/solution1.svg', color: Colors.yellow,)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Colors',
                                  style: GoogleFonts.poppins(color: HexColor('#0A4DA2'), fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                                      child: Container(
                                        color: HexColor('#FF9B9B'),
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        color = '#FF9B9B';
                                      });
                                    },
                                  ),
                                  GestureDetector(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                                      child: Container(
                                        color: HexColor('#95EB9E'),
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        color = '#95EB9E';
                                      });
                                    },
                                  ),
                                  GestureDetector(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                                      child: Container(
                                        color: HexColor('#94CAEB'),
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        color = '#94CAEB';
                                      });
                                    },
                                  ),
                                  GestureDetector(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                                      child: Container(
                                        color: HexColor('#A594EB'),
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        color = '#A594EB';
                                      });
                                    },
                                  ),
                                  GestureDetector(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                                      child: Container(
                                        color: HexColor('#DE94EB'),
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        color = '#DE94EB';
                                      });
                                    },
                                  ),
                                  GestureDetector(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                                      child: Container(
                                        color: HexColor('#EBD094'),
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        color = '#EBD094';
                                      });
                                    },
                                  ),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                                    child: Container(
                                      color: Colors.white,
                                      child: SvgPicture.asset('Assets/+.svg'),
                                      height: 35,
                                      width: 35,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Scenes',
                                  style: GoogleFonts.poppins(color: HexColor('#0A4DA2'), fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    child: Container(
                                      height: 60,
                                      width: 150,
                                      padding: EdgeInsets.all(15),
                                      color: HexColor('#FF9B9B'),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset('Assets/solution1.svg',color: Colors.white,),
                                          SizedBox(width: 15,),
                                          Text(
                                            'Birthday',
                                            style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    child: Container(
                                      height: 60,
                                      width: 150,
                                      padding: EdgeInsets.all(15),
                                      color: HexColor('#DE94EB'),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset('Assets/solution1.svg',color: Colors.white,),
                                          SizedBox(width: 15,),
                                          Text(
                                            'Party',
                                            style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    child: Container(
                                      height: 60,
                                      width: 150,
                                      padding: EdgeInsets.all(15),
                                      color: HexColor('#94CAEB'),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset('Assets/solution1.svg',color: Colors.white,),
                                          SizedBox(width: 15,),
                                          Text(
                                            'Relax',
                                            style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    child: Container(
                                      height: 60,
                                      width: 150,
                                      padding: EdgeInsets.all(15),
                                      color: HexColor('#95EB9E'),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset('Assets/solution1.svg',color: Colors.white,),
                                          SizedBox(width: 15,),
                                          Text(
                                            'Fun',
                                            style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          color = '#000000';
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0, top: 15),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset('Assets/Icon awesome-power-off.svg', width: 25, height: 25,),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
        ],
      ),

    );
  }
}
