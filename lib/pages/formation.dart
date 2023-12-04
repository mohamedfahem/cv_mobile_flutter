import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(FormationApp());

class FormationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormationPage(),
    );
  }
}

class FormationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            FormationTitle(),
            SizedBox(height: 20),
            Formation(),
          ],
        ),
      ),
    );
  }
}

class FormationTitle extends StatelessWidget {
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
          "Formation",
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

class Formation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: <Widget>[
              FormationItem(
                title: "UDEMY",
                description: "MERN STACK JS",
                date: "2022",
                color: Color(0xFFFFABC8),
              ),
              FormationItem(
                title: "UDEMY",
                description: "Flutter development bootcamp with Dart",
                date: "2023",
                color: Color(0xFF7768D8),
              ),
              FormationItem(
                title: "Udemy",
                description: "Formation Complète Développeur Web",
                date: "2021",
                color: Color(0xFF8AC185),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FormationItem extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final Color color;

  const FormationItem({
    required this.title,
    required this.description,
    required this.date,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 115,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Text(
              title,
              style: TextStyle(
                color: Color(0xFF2C352D),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              description,
              style: GoogleFonts.lato(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 10, right: 10, bottom: 15, top: 5),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 6, top: 6, right: 6, bottom: 6),
                  child: Text(
                    date,
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
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
