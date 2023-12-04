import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(EducationApp());

class EducationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EducationPage(),
    );
  }
}

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            EducationTitle(),
            SizedBox(height: 20),
            Education(),
          ],
        ),
      ),
    );
  }
}

class EducationTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 30,
        ),
        child: Text(
          "Education",
          style: GoogleFonts.lato(
            fontSize: 25,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        EducationItem(
          date: "2020-Présent",
          institution: "ISET - SFAX",
          details: " License in Information Systems Development",
        ),
        SizedBox(height: 10),
        EducationItem(
          date: "2016-2020",
          institution: "Lycée Mazzouna",
          details: "Baccalaureat Degree in Experimental Science",
        ),
      ],
    );
  }
}

class EducationItem extends StatelessWidget {
  final String date;
  final String institution;
  final String details;

  const EducationItem({
    required this.date,
    required this.institution,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme
        .of(context)
        .brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isDarkMode ? Colors.white : Color(0xFF16181D),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                date,
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: isDarkMode ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                institution,
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: isDarkMode ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: isDarkMode ? Colors.black : Colors.white,
                ),
                child: Icon(Icons.school,
                    color: isDarkMode ? Colors.white : Colors.black),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            details,
            style: GoogleFonts.lato(
              fontSize: 12,
              color: isDarkMode ? Colors.grey : Color(0xFF6E717E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}