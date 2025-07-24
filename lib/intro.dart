import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:renture/authentication/signup.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:renture/chatbot/Gemini_chatbot.dart';
import 'package:google_fonts/google_fonts.dart';
class MyIntro extends StatefulWidget {
  @override
  _MyIntroState createState() => _MyIntroState();
}

class _MyIntroState extends State<MyIntro> {
  bool isLogin = true;

  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();
  // int _selectedPage = 0;
  // final translator = GoogleTranslator();
  // String _selectedLanguage = 'English';
  // String buttonText = 'Verify';
  //
  // bool _isSearching = false;
  // TextEditingController _searchController = TextEditingController();



  // final List<String> languages = ['English', 'Tamil', 'Hindi'];
  //
  // final List<String> titles = [
  //   'Scam Caller-ID Checker',
  //   'Scam Website Checker',
  //   'Scam Message Checker',
  //   'Scam Email Checker',
  // ];
  //
  // final List<String> subtitles = [
  //   'Allow you to check for fraud Caller-ID',
  //   'Allow you to check for fraud Website',
  //   'Allow you to check for fraud Messages',
  //   'Allow you to check for fraud Email',
  // ];

  // void _translateTexts() async {
  //   for (int i = 0; i < titles.length; i++) {
  //     var translatedTitle = await translator.translate(titles[i], to: _selectedLanguage.substring(0, 2).toLowerCase());
  //     var translatedSubtitle = await translator.translate(subtitles[i], to: _selectedLanguage.substring(0, 2).toLowerCase());
  //     var translatedButton = await translator.translate('Verify', to: _selectedLanguage.substring(0, 2).toLowerCase());
  //     setState(() {
  //       titles[i] = translatedTitle.text;
  //       subtitles[i] = translatedSubtitle.text;
  //       buttonText = translatedButton.text;
  //     });
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: Text(
          "Vanilla",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
          // image: DecorationImage(
          //   image: NetworkImage('https://imgs.search.brave.com/sfqVZvAxc_0V_vB1v-l7ljQaMeuWC5k1RRnVF_kbgc8/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzJkL2Zl/LzZjLzJkZmU2Yzk2/ZThjODFhNjkwZGQ1/NDczNDE0MjY1ZDlk/LmpwZw'),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Column(
          children: [
            
            


          ],
        ),
      ),
    );
  }

//   void _showPopup(BuildContext context, Widget popup) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           backgroundColor: Colors.transparent,
//           child: popup,
//         );
//       },
//     );
//   }
// }
//
// class CustomTile extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final Widget page;
//   final String buttonText;
//
//   CustomTile({required this.title, required this.subtitle, required this.page, required this.buttonText});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(10),
//       color: Colors.black.withOpacity(0.3),
//       elevation: 5,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//         side: BorderSide(color: Colors.white),
//       ),
//       child: ListTile(
//         title: Text(title, style: TextStyle(color: Colors.white)),
//         subtitle: Text(subtitle, style: TextStyle(color: Colors.white)),
//         trailing: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.blue[900],
//           ),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => page),
//             );
//           },
//           child: Text(buttonText, style: TextStyle(color: Colors.white)),
//         ),
//       ),
//     );
//   }
// }
//
// class ChatbotPopup extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.black,
//         border: Border.all(color: Colors.white, width: 2), // Blue border
//         borderRadius: BorderRadius.circular(10),
//       ),
//       padding: EdgeInsets.all(15),
//       // color: Colors.white,
//       constraints: BoxConstraints(
//         maxWidth: 300,
//         maxHeight: 150, // Reduced height
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min, // Makes the column take only necessary space
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Icon(Icons.chat, color: Colors.blue), // Added icon
//               SizedBox(width: 8),
//               Text(
//                 "AI Chatbot",
//                 style:  GoogleFonts.poppins(fontSize: 18, color: Colors.white),
//               ),
//             ],
//           ),
//           SizedBox(height: 10),
//           TextButton(
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => GeminiChatApp()),
//               );
//             },
//             child: Text('Go to Chatbot', style: GoogleFonts.poppins(
//               fontSize: 15,
//               color: Colors.white,
//             )),
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[900])
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class NotificationsPopup extends StatelessWidget {
//   final List<Map<String, String>> notifications = [
//     {"title": "New Message", "message": "You have a new message from John."},
//     {"title": "Reminder", "message": "Meeting scheduled at 3 PM today."},
//     {"title": "Battery Low", "message": "Your battery is at 15%. Please charge soon."},
//     {"title": "Friend Request", "message": "Alex sent you a friend request."},
//     {"title": "Update Available", "message": "A new app update is available."},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.black,
//         border: Border.all(color: Colors.white, width: 2), // Blue border
//         borderRadius: BorderRadius.circular(10),
//       ),
//       constraints: BoxConstraints(
//         maxWidth: 300,
//         maxHeight: 600, // Reduced height
//       ),
//       padding: EdgeInsets.all(20),
//       // color: Colors.black,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Notifications",
//             style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
//           ),
//           SizedBox(height: 10),
//           Expanded(
//             child: SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: notifications.map((notif) {
//                   return SingleChildScrollView(
//                     scrollDirection : Axis.vertical,
//                     child: Container(
//                       constraints: BoxConstraints(
//                         maxWidth: 290,
//
//                          // Reduced height
//                       ),
//
//                       margin: EdgeInsets.only(bottom: 10),
//                       width: 290,
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[200],
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             notif["title"]!,
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 5),
//                           Text(notif["message"]!),
//                         ],
//                       ),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ProfilePopup extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20),
//       color: Colors.white,
//       child: Column(
//         children: [
//
//         ],
//       ),
//     );
//   }
}

