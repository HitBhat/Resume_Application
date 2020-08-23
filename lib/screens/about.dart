import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9AA33).withOpacity(0.25),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: new AssetImage("assets/images/name.jpeg"),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hitesh Bhat',
                  style: GoogleFonts.redHatDisplay(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ).shimmer(
                  primaryColor: Color(0xff4A6572),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'About',
                style: GoogleFonts.raleway(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "I am a 4th year IT student. Well versed in Android Development using Java, Kotlin, Dart, Flutter. With a good grasp of Data Structure and Algorithm have done several interesting projects.",
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      color: Colors.teal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              MiddleScreen(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Connect With Me',
                  style: GoogleFonts.lobster(
                      fontSize: 24, fontWeight: FontWeight.w400),
                ).shimmer(
                  primaryColor: Color(0xff4A6572),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      AntDesign.facebook_square,
                      size: 50,
                      color: Color(0xff4A6572),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      AntDesign.instagram,
                      size: 50,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      AntDesign.github,
                      size: 50,
                      color: Color(0xff4A6572),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0xff4A6572),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Projects',
                style: GoogleFonts.crimsonText(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            VxSwiper(
              items: [
                ProjectWidget("News Lite"),
                ProjectWidget("Chat Application"),
                ProjectWidget("Authenticate Me"),
              ],
              height: 200,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
              enlargeCenterPage: true,
            ).h(200),
          ],
        ));
  }
}

class ProjectWidget extends StatelessWidget {
  final String name;
  ProjectWidget(this.name);
  @override
  Widget build(BuildContext context) {
    return name.text.bold.xl2.white.center
        .make()
        .box
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(
            color: Color(0xff4A6572), elevation: 5, curve: VxCurve.emboss)
        .make()
        .p16();
  }
}
