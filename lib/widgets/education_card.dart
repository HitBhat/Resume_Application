import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationCard extends StatelessWidget {
  final String edu;
  final String name;
  final String years;

  EducationCard({
    this.edu,
    this.name,
    this.years,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        color: Colors.pink[100],
        elevation: 10,
        shadowColor: Colors.grey,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.school),
              onPressed: () {},
            ),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: 280,
                    child: Text(
                      edu,
                      style: GoogleFonts.merriweather(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 280,
                    child: Text(
                      name,
                      style: GoogleFonts.ubuntuCondensed(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 280,
                    child: Text(
                      years,
                      style: GoogleFonts.ubuntu(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
