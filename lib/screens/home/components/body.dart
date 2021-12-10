// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        //multiplying 0.2 means the container will cover the 20%of the screen
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        15.0,
                        15.0,
                        15.0,
                        50.0,
                      ),
                      child: Text(
                        'Hi Tazer!',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(150, 15.0, 15, 50.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/logo.png'),
                        minRadius: 20,
                        maxRadius: 30,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(36),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: GoogleFonts.montserrat(
                                color: kPrimaryColor.withOpacity(0.5)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset('assets/icons/search.svg'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 500,
          width: 500,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 50, right: 50, bottom: 10),
                      child: Text(
                        'Recommended',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: kTextColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 108, right: 10, top: 50, bottom: 0),
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            'More',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0, right: 0, top: 0, bottom: 15),
                child: Container(
                  height: 200,
                  child: ListView(
                    padding: EdgeInsets.only(left: 2, top: 10, right: 15),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      recommendPlant('assets/images/image_1.png', 'SAMANTHA'),
                      SizedBox(
                        width: 20,
                      ),
                      recommendPlant('assets/images/image_2.png', 'ANGELICA'),
                      SizedBox(
                        width: 20,
                      ),
                      recommendPlant('assets/images/image_1.png', 'ROSIE'),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 50, right: 50, bottom: 10),
                      child: Text(
                        'Featured Plants',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: kTextColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 105, right: 9, top: 50, bottom: 0),
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            'More',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0, right: 0, top: 0, bottom: 15),
                child: Container(
                  height: 200,
                  child: ListView(
                    padding: EdgeInsets.only(left: 2, top: 10, right: 15),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      featuredPlant('assets/images/bottom_img_1.png', 'Daisy'),
                      SizedBox(
                        width: 20,
                      ),
                      featuredPlant(
                          'assets/images/bottom_img_2.png', 'ANGELICA'),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Stack recommendPlant(src, name) {
    return Stack(
      children: [
        Container(
          height: 200, //200
          width: 150, //150
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage(src),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 30,
            width: 150,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  name,
                  style: GoogleFonts.montserrat(color: kTextColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Stack featuredPlant(src, name) {
    return Stack(
      children: [
        Container(
          height: 200, //200
          width: 300, //150
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage(src),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 30,
            width: 300,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  name,
                  style: GoogleFonts.montserrat(color: kTextColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
