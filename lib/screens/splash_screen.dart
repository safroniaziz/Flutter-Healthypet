import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthypet/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
        (route) => false,
      );
    });
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/Background.png'),
          SafeArea(
              child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 42,
                ),
                Image.asset(
                  'assets/images/Logo.png',
                  height: 22,
                ),
                const SizedBox(
                  height: 73,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Helping you\nto keep ",
                    style: GoogleFonts.manrope(
                        fontSize: 24,
                        color: const Color(0xFFDEE1FE),
                        letterSpacing: 3.5 / 100,
                        height: 152 / 100),
                    children: [
                      TextSpan(
                          text: "your bestie",
                          style: GoogleFonts.manrope(
                              color: Colors.white,
                              fontWeight: FontWeight.w800)),
                      const TextSpan(text: "\nstay healthy"),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
