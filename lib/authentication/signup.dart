import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renture/intro.dart';
import 'package:translator/translator.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  final Widget? nextScreen;

  const SplashScreen({super.key, this.nextScreen});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Lottie.asset('assets/success.json'),
      ),
      nextScreen: nextScreen ?? const Login(),
      duration: 1000,
      backgroundColor: Colors.black,
      splashIconSize: 500,
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isSignup = true;

  void onSubmit() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SplashScreen(nextScreen: MyIntro()),
      ),
    );
  }

  final List<String> languages = ['English', 'Tamil', 'Hindi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Gradient header (no margin here)
            Container(
              height: 150,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                   Color.fromARGB(255, 20, 126, 158),
                    Color.fromARGB(255, 50, 214, 214)
                    // Color.fromARGB(255, 0, 29, 107)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('Renture_logo.png', width: 100, height: 100),
                    SizedBox(height: 5),
                    // Text(
                    //   isSignup ? "Glad to See You!" : "Welcome Back!",
                    //   textAlign: TextAlign.center,
                    //   style: GoogleFonts.poppins(
                    //     color: Colors.white,
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // Login section with margin
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Text(
                    isSignup ? "Signup" : "Login",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  if (isSignup)
                    Column(
                      children: [
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: "Enter Name",
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.greenAccent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        borderSide: BorderSide(width: 1, color: Colors.greenAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        borderSide: BorderSide(width: 1, color: Colors.greenAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: onSubmit,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text(
                        isSignup ? "Signup" : "Login",
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isSignup = !isSignup;
                      });
                    },
                    child: Text(
                      isSignup
                          ? "Already have an account? Login"
                          : "Don't have an account? Sign Up",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
