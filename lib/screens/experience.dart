import 'package:flutter/material.dart';
import 'package:portfolio_application/widgets/experience_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> _exp = [
      {
        'name': 'WhereIsToBuy',
        'desig': 'Android Developer Intern',
        'desc':
            'Completed a working prototype for the upcoming mobile application for the company. The application was developed with Java and used MySQL, Firebase as its backend during its intial phase. My main goal was to get the app communicating with the backend(Firebase) and create the database such that it can then be retrived by my team members working on the front end side/user side of the application. UI/UX was completed by the team itself. I played the role of team lead for this project.',
        'mode': 'Remote Internship',
        'time': 'Dec 2019 - Feb 2020'
      },
      {
        'name': 'Sangawari Agrotech Foundation',
        'desig': 'Android Developer Intern',
        'mode': 'Remote Internship',
        'desc':
            'Sangawari Agrotech Foundation is an NGO working for welfare of farmers using modern technology. As an intern I was given the responsibility to recreate certain aspects of the application in the native Android using Java, such as Sattelite Imagery, Soil Moisture, Soil Health and more features that help farmers to assess the quality of their product and how to enhance them. The main aspect that the application needed was to be able to showcase certain features on a graph for a certain period of time',
        'time': 'Feb 2020 - Mar 2020',
      },
      {
        'name': 'Techmakerz Technologies and Creative Agency',
        'desig': 'Content Writer',
        'mode': 'Remote Internship',
        'desc':
            'Techmakerz being a digital marketing company gave me an oppurtunity to write and edit articles that influenced clients growth in digital market. During this internship of 1 month, I wrote content for 2 websites from scratch with SEO which helped clients to enhance their SEO, increasing traffic and hence business. Lorem ipsum dipsum making pipsum assuming kipsum having butter in a sum. Taking money and making money for businesses and helping them grow.',
        'time': 'Mar 2020 - April 2020',
      },
    ];
    return Scaffold(
      backgroundColor: Colors.amberAccent.withOpacity(0.5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'INTERNSHIPS',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 450,
              child: VxSwiper(
                autoPlay: true,
                autoPlayAnimationDuration: 1.seconds,
                scrollDirection: Axis.vertical,
                items: [
                  ExperienceCard(
                    desc: _exp[0]['desc'],
                    organisationName: _exp[0]['name'],
                    positoin: _exp[0]['desig'],
                    workingPeriod: _exp[0]['time'],
                    mode: _exp[0]['mode'],
                  ),
                  ExperienceCard(
                    desc: _exp[1]['desc'],
                    organisationName: _exp[1]['name'],
                    positoin: _exp[1]['desig'],
                    workingPeriod: _exp[1]['time'],
                    mode: _exp[1]['mode'],
                  ),
                  ExperienceCard(
                    desc: _exp[2]['desc'],
                    organisationName: _exp[2]['name'],
                    positoin: _exp[2]['desig'],
                    workingPeriod: _exp[2]['time'],
                    mode: _exp[2]['mode'],
                  ),
                ],
              ),
              // ),
              // ExperienceCard(
              //   desc: _exp[0]['desc'],
              //   organisationName: _exp[0]['name'],
              //   positoin: _exp[0]['desig'],
              //   workingPeriod: _exp[0]['time'],
              //   mode: _exp[0]['mode'],
              // ),
              // ExperienceCard(
              //   desc: _exp[1]['desc'],
              //   organisationName: _exp[1]['name'],
              //   positoin: _exp[1]['desig'],
              //   workingPeriod: _exp[1]['time'],
              //   mode: _exp[1]['mode'],
              // ),
              // ExperienceCard(
              //   desc: _exp[2]['desc'],
              //   organisationName: _exp[2]['name'],
              //   positoin: _exp[2]['desig'],
              //   workingPeriod: _exp[2]['time'],
              //   mode: _exp[2]['mode'],
            ),
            SizedBox(height: 20),
            Text(
              'POSTION OF RESPONSIBILITY',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                'Winner of Science Expo organised in Science Museum in 2015.',
                style: GoogleFonts.sourceSansPro(
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Divider(),
            Container(
              child: Text(
                'Secured 2nd rank in National Science Olympiad in Delhi Region.',
                style: GoogleFonts.sourceSansPro(
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Divider(),
            Container(
              child: Text(
                'Content Developer for the Newsletter Society of college called The Campus Chronicles.',
                style: GoogleFonts.sourceSansPro(
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
