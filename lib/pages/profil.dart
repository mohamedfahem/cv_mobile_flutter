import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(ProfilApp());

class ProfilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProfilTitle(),
            SizedBox(height: 20),
            Profil(),
          ],
        ),
      ),
    );
  }
}

class ProfilTitle extends StatelessWidget {
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
          "Profil",
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

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage('images/pic.png'),
              height: 170,
              width: 170,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Mohamed FAHEM",
            style: GoogleFonts.lato(
              fontSize: 25,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Junior Developer",
            style: GoogleFonts.lato(
              fontSize: 18,
              color: Color(0xFF4C4F59),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "I am a 3rd-year student in Information Systems Development at ISET Sfax.I am a highly innovative and ambitious student seeking new opportunities and new adventures to gain valuable experience and shape a great professional profile.",
            style: TextStyle(
              color: Color(0xFF2C352D),
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
