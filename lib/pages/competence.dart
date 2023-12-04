import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(CompetenceApp());

class CompetenceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        // Add other light mode theme configurations here
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // Add other dark mode theme configurations here
      ),
      home: CompetencePage(),
    );
  }
}

class CompetencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compétence'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CompetenceTitle(),
            SizedBox(height: 16.0),
            Competence(),
          ],
        ),
      ),
    );
  }
}

class CompetenceTitle extends StatelessWidget {
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
          "Skills",
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

class Competence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isDarkMode ? Colors.white : Color(0xFF16181D),
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CompetencyContainer("images/html.png", "HTML", Colors.orange.shade300, isDarkMode),
            CompetencyContainer("images/css.png", "CSS", Colors.blue.shade300, isDarkMode),
            CompetencyContainer("images/js.png", "JavaScript", Colors.yellow.shade300, isDarkMode),
            CompetencyContainer("images/bs.png", "BootStrap", Colors.purple.shade300, isDarkMode),
            CompetencyContainer("images/c.png", "C", Colors.blue.shade500, isDarkMode),
            CompetencyContainer("images/mongodb.png", "MongoDB", Colors.lightBlue.shade300, isDarkMode),
            CompetencyContainer("images/dart.png", "Dart", Colors.cyanAccent, isDarkMode),
            CompetencyContainer("images/flutter.png", "Flutter", Colors.blue.shade500, isDarkMode),
            CompetencyContainer("images/PHP.png", "PHP", Colors.deepPurpleAccent.shade400, isDarkMode),
            CompetencyContainer("images/Java.png", "JAVA", Colors.white, isDarkMode),
            CompetencyContainer("images/python.png", "Python", Colors.blue.shade200, isDarkMode),
          ],
        ),
      ),
    );
  }
}

class CompetencyContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color color;
  final bool isDarkMode;

  CompetencyContainer(this.imagePath, this.title, this.color, this.isDarkMode);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isDarkMode ? Colors.black : color,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(imagePath),
              width: 50,
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              title,
              style: GoogleFonts.lato(
                fontSize: 13,
                color: isDarkMode ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
