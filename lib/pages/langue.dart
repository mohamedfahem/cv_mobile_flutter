import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(LangueApp());

class LangueApp extends StatelessWidget {
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
      home: LanguePage(),
    );
  }
}

class LanguePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Languages'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            LangueTitle(),
            SizedBox(height: 20),
            Langue(),
          ],
        ),
      ),
    );
  }
}

class LangueTitle extends StatelessWidget {
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
          "Languages",
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

class Langue extends StatelessWidget {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          LangueItem(
            language: "Arabic",
            proficiency: "MotherTongue",
          ),
          LangueItem(
            language: "French",
            proficiency: "Advanced",
          ),
          LangueItem(
            language: "English",
            proficiency: "Advanced",
          ),
        ],
      ),
    );
  }
}

class LangueItem extends StatelessWidget {
  final String language;
  final String proficiency;

  const LangueItem({
    required this.language,
    required this.proficiency,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme
        .of(context)
        .brightness == Brightness.dark;
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            language,
            style: GoogleFonts.lato(
              fontSize: 20,
              color: isDarkMode ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            proficiency,
            style: GoogleFonts.lato(
              fontSize: 12,
              color: Color(0xFF6E717E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
