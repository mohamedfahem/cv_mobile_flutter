import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(ProjectsApp());

class ProjectsApp extends StatelessWidget {
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
      home: ProjectsPage(),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProjectsTitle(),
            SizedBox(height: 16.0),
            Projects(),
          ],
        ),
      ),
    );
  }
}

class ProjectsTitle extends StatelessWidget {
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
          "Projects",
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

class Projects extends StatelessWidget {
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
          children: <Widget>[
            ProjectCard(
              title: "Flutter Project",
              description: "A mobile app Voyage developed using Flutter.",
              date: "2022-2023",
              imageUrl: "images/voyage.png",
              url: "https://www.google.com",
              cardColor: Colors.blueAccent,
              textColor: Colors.white,
              buttonColor: Colors.blue,
              isDarkMode: isDarkMode,
            ),
            ProjectCard(
              title: "ARTY-PROD",
              description: "A web application with DJANGO to showcase their graphic design, production, and 3D design services.",
              date: "2023-2024",
              imageUrl: "images/artyprod.png",
              url: "https://github.com/mohamedfahem/ArtyProd",
              cardColor: Colors.greenAccent,
              textColor: Colors.black,
              buttonColor: Colors.green,
              isDarkMode: isDarkMode,
            ),
            ProjectCard(
              title: "Mailer",
              description: "A Mailer website using PHP.",
              date: "2021-2022",
              imageUrl: "images/mailer.png",
              url: "https://github.com/mohamedfahem/cv_with_flutter",
              cardColor: Colors.orangeAccent,
              textColor: Colors.black,
              buttonColor: Colors.orange,
              isDarkMode: isDarkMode,
            ),
            ProjectCard(
              title: "Coffee Management",
              description: "A Coffee Desktop App with C#.",
              date: "2022-2023",
              imageUrl: "images/coffe.png",
              url: "https://github.com/mohamedfahem/cafemanagement",
              cardColor: Colors.pinkAccent,
              textColor: Colors.white,
              buttonColor: Colors.pink,
              isDarkMode: isDarkMode,
            ),
            // Add more ProjectCard widgets as needed
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String imageUrl;
  final String url;
  final Color cardColor;
  final Color textColor;
  final Color buttonColor;
  final bool isDarkMode;

  ProjectCard({
    required this.title,
    required this.description,
    required this.date,
    required this.imageUrl,
    required this.url,
    required this.cardColor,
    required this.textColor,
    required this.buttonColor,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280, // Set the desired width
      height: 370, // Set the desired height
      child: GestureDetector(
        onTap: () {
          _launchURL(url);
        },
        child: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: cardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                imageUrl,
                width: 200,
                height: 120,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  date,
                  style: GoogleFonts.lato(
                    fontSize: 10,
                    color: Color(0xFF6E717E),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  try {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } catch (e) {
    print('Error launching URL: $e');
  }
}
