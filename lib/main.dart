import 'package:flutter/material.dart';
// import 'package:vanilla_app/Splash.dart';
// import 'package:vanilla_app/intro.dart';
import 'package:renture/authentication/signup.dart';
import 'package:renture/intro.dart';
// import 'package:vanilla_app/PopupItems/Gemini_chatbot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Login(),
      home: MyIntro(),
    );
  }
}