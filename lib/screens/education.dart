import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_application/widgets/education_card.dart';

class EducationExperience extends StatelessWidget {
  final List<Map<String, String>> _completeEducation = [
    {
      'name': 'Dr. Akhilesh Das Gupta Institute of Technology and Management',
      'edu': 'Bachelor of Technology(B.Tech) - Information Technology',
      'year': '2017 - 2021',
    },
    {
      'name': 'Kendriya Vidhalaya, Rohini Sector-8',
      'edu': 'CBSE - Class XII',
      'year': '2017',
    },
    {
      'name': 'Kendriya Vidhalaya, Rohini Sector-8',
      'edu': 'CBSE - Class X',
      'year': '2015',
    },
  ];
  static const routePath = "\education";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.withOpacity(0.14),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'College',
              style: GoogleFonts.merriweather(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            EducationCard(
              edu: _completeEducation[0]['edu'],
              name: _completeEducation[0]['name'],
              years: _completeEducation[0]['year'],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'School',
              style: GoogleFonts.merriweather(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            EducationCard(
              edu: _completeEducation[1]['edu'],
              name: _completeEducation[1]['name'],
              years: _completeEducation[1]['year'],
            ),
            EducationCard(
              edu: _completeEducation[2]['edu'],
              name: _completeEducation[2]['name'],
              years: _completeEducation[2]['year'],
            )
          ],
        ),
      ),
    );
  }
}
