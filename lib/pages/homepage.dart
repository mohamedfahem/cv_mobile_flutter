import 'package:cv/pages/projects.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:cv/pages/competence.dart';
import 'package:cv/pages/education.dart';
import 'package:cv/pages/formation.dart';
import 'package:cv/pages/profil.dart';
import 'package:cv/pages/vie.dart';
import 'package:cv/pages/langue.dart';
import 'package:cv/pages/contact.dart';
import 'package:cv/pages/experience.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isDarkMode = false;
  final ScrollController _scrollController = ScrollController();
  bool isTopVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    setState(() {
      isTopVisible = _scrollController.offset > 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('CV Mohamed Fahem '),
          actions: [
            IconButton(
              icon: isDarkMode
                  ? Icon(Icons.wb_sunny) // Use sun icon when dark mode is on
                  : Icon(Icons.dark_mode),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Profil(),
              SizedBox(height: 4),
              EducationTitle(),
              Education(),
              SizedBox(height: 4),
              FormationTitle(),
              Formation(),

              SizedBox(height: 4),
              ProjectsTitle(),
              Projects(),
              SizedBox(height: 4),
              ExperienceTitle(),
              Experience(),
              SizedBox(height: 4),
              CompetenceTitle(),
              Competence(),
              SizedBox(height: 4),
              VieTitle(),
              Vie(),
              SizedBox(height: 4),
              LangueTitle(),
              Langue(),
              SizedBox(height: 4),

            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('Mohamed Fahem'),
                accountEmail: const Text('JUNIOR DEVELOPER'),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('images/hama.png'),
                ),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              _buildDrawerItem(
                context,
                icon: FontAwesomeIcons.facebook,
                title: 'Facebook',
                onTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                  launch('https://www.facebook.com/mohamedfahem.001/');
                },
              ),
              _buildDrawerItem(
                context,
                icon: FontAwesomeIcons.instagram,
                title: 'Instagram',
                onTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                  launch('https://www.instagram.com/hama_rabiiynajhk/');
                },
              ),

              _buildDrawerItem(
                context,
                icon: FontAwesomeIcons.twitter,
                title: 'Twitter',
                onTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                  launch('https://twitter.com/hamafahem09?t=W3jTXDJ6MjQAR1FMOYLgug&s=09');
                },
              ),
              _buildDrawerItem(
                context,
                icon: FontAwesomeIcons.linkedin,
                title: 'LinkedIn',
                onTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                  launch('https://www.linkedin.com/in/mohamed-fahem-122a5221b/');
                },
              ),
              _buildDrawerItem(
                context,
                icon: FontAwesomeIcons.github,
                title: 'GitHub',
                onTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                  launch('https://github.com/mohamedfahem');
                },
              ),
              _buildDrawerItem(
                context,
                icon: Icons.phone,
                title: 'Phone',
                onTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                  launch('tel:+216 25489591');
                },
              ),
        _buildDrawerItem(
          context,
          icon: FontAwesomeIcons.whatsapp,
          title: 'WhatsApp',
          onTap: () {
            _scaffoldKey.currentState?.openEndDrawer();
            launch('https://wa.me/+216 25489591');
          },),
              _buildDrawerItem(
                context,
                icon: Icons.email,
                title: 'Email',
                onTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                  launch('mailto:fahemmohamed46@gmail.com');
                },
              ),
              _buildDrawerItem(
                context,
                icon: Icons.location_on,
                title: 'Mezzouna - SIDI BOUZID',
                onTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                  _launchMaps();
                },
              ),
            ],
          ),
        ),
        floatingActionButton: isTopVisible
            ? FloatingActionButton(
          onPressed: () {
            _scrollController.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeInOut);
          },
          child: Icon(Icons.arrow_upward),
        )
            : null,
        bottomNavigationBar: _buildFooter(),
      ),
    );
  }
  Widget _buildFooter() {

    return Container(
      color: isDarkMode ? Colors.black : Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSocialMediaLinks(),
          Text(
            'Mohamed Fahem © ${DateTime.now().year}',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialMediaLinks() {
    return Row(
      children: [
        _buildIconButton(Icons.phone, 'tel:+216 25489591'),
        _buildIconButton(Icons.email, 'mailto:fahemmohamed46@gmail.com'),
        _buildIconButton(FontAwesomeIcons.linkedin, 'https://www.linkedin.com/in/mohamed-fahem-122a5221b/'),
        _buildIconButton(FontAwesomeIcons.github, 'https://github.com/mohamedfahem'),

      ],
    );
  }

  Widget _buildIconButton(IconData icon, String link) {
    return IconButton(
      icon: FaIcon(icon, size: 20), // Adjust the size as needed
      color: Colors.white,
      onPressed: () {
        launch(link);
      },

    );
  }


  Widget _buildDrawerItem(BuildContext context,
      {required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      leading: FaIcon(icon),
      title: Text(title),
    );
  }
}
_launchMaps() async {
  const url = 'https://maps.app.goo.gl/YFv1qHPj62G48tqq7';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch Maps');
  }
}

