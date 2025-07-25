import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renture/intro.dart';
import 'package:translator/translator.dart';
import 'package:renture/authentication/signup.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:renture/chatbot/Gemini_chatbot.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renture/pages/account.dart';
import 'package:renture/pages/services.dart';

class Trips extends StatefulWidget {
  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  bool isLogin = true;
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: Text(
          "My Trips",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyIntro()),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Trips()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Services()),
            );
          } else if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Account()),
            );
          }
        },
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Colors.white, // <-- This works for fixed
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor:Color.fromRGBO(75,75,75, 1.0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.arrow_swap),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_4x3_fill),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_solid),
            label: 'Account',
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}

