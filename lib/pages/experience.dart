import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceTitle extends StatelessWidget {
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
          "Experience",
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

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExperienceItem(
          companyName: "ABBK PHYSICWORKS",
          position: "INTERN",
          date: "Juillet 2023 - Aout 2023",
          description: "• Developed a WPF project employee management system using C#.",
          website: "https://www.emworks.tn",
        ),
        ExperienceItem(
          companyName: "EMWORKS TUNISIE  ",
          position: "INTERN",
          date: "JANVIER 2022 - FEVRIER 2022",
          description: "• Exploring the professional world.         •Developed a mini e-commerce website using HTML, CSS, Bootstrap. and jQuery",
          website: "https://www.emworks.tn",
        ),
      ],
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String companyName;
  final String position;
  final String date;
  final String description;
  final String website;

  ExperienceItem({
    required this.companyName,
    required this.position,
    required this.date,
    required this.description,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: () => _launchURL(website),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isDarkMode ? Colors.white : Color(0xFF16181D),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  companyName,
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: isDarkMode ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  position,
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: isDarkMode ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: isDarkMode ? Colors.black : Colors.white,
                  ),
                  child: Icon(Icons.work, color: isDarkMode ? Colors.white : Colors.black),
                ),
              ],
            ),
            Text(
              date,
              style: GoogleFonts.lato(
                fontSize: 12,
                color: isDarkMode ? Colors.grey : Color(0xFF6E717E),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: GoogleFonts.lato(
                fontSize: 14,
                color: isDarkMode ? Colors.black87 : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experience Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ExperienceTitle(),
            Experience(),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ExperiencePage(),
  ));
}
