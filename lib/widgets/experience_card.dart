import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceCard extends StatelessWidget {
  final String organisationName;
  final String workingPeriod;
  final String positoin;
  final String desc;
  final String mode;
  

  ExperienceCard({
    this.desc,
    this.organisationName,
    this.positoin,
    this.workingPeriod,
    this.mode,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                child: Text(
                  positoin,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text(
            workingPeriod,
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    organisationName,
                    style: GoogleFonts.sourceSansPro(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                child: Text(
                  mode,
                  style: GoogleFonts.sourceSansPro(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 350,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                desc,
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
