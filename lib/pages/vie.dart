import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(VieApp());

class VieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViePage(),
    );
  }
}

class ViePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vie Estudiantine'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            VieTitle(),
            SizedBox(height: 20),
            Vie(),
          ],
        ),
      ),
    );
  }
}

class VieTitle extends StatelessWidget {
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
          "Student life",
          style: GoogleFonts.lato(
            fontSize: 25,
            color: Colors.blue, // Change this color
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class Vie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 25),
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Row( // Changed from Column to Row
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            width: 165,
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green, // Change this color
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Club\n MTC-ISET SFAX",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Membre",
                  style: GoogleFonts.lato(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "2021-2022",
                  style: GoogleFonts.lato(
                    fontSize: 11,
                    color: Color(0xFF6E717E),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            width: 165,
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.orange, // Change this color
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Club RISE-UP",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "MEMBRE",
                  style: GoogleFonts.lato(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "2021-2022",
                  style: GoogleFonts.lato(
                    fontSize: 11,
                    color: Color(0xFF6E717E),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
