import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../animations/bottomAnimation.dart';
import '../../animations/entranceFader.dart';
import '../../constants.dart';
import '../../widgets/socialMediaIcon.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: width < 1200 ? height * 0.15 : height * 0.1,
            right: width * 0.05,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  'assets/images/port.png',
                  height: width < 1200 ? height * 0.8 : height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "WELCOME TO MY PORTFOLIO! ",
                      style: GoogleFonts.montserrat(fontSize: height * 0.03, fontWeight: FontWeight.w300),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        "assets/images/hi.gif",
                        height: height * 0.05,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "I am,",
                  style: GoogleFonts.montserrat(fontSize: height * 0.035, fontWeight: FontWeight.w200),
                ),
                Text(
                  "Mohit",
                  style: GoogleFonts.montserrat(
                    fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 5.0,
                  ),
                ),
                Text(
                  "Singh",
                  style: GoogleFonts.montserrat(fontSize: width < 1200 ? height * 0.085 : height * 0.095, fontWeight: FontWeight.w100, letterSpacing: 4.0),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.play_arrow_rounded,
                        color: myPrimaryColor,
                      ),
                      // ignore: deprecated_member_use
                      TyperAnimatedTextKit(
                          isRepeatingAnimation: true,
                          speed: const Duration(milliseconds: 50),
                          textStyle: GoogleFonts.montserrat(fontSize: height * 0.03, fontWeight: FontWeight.w200),
                          text: const [" Flutter Developer", " Competitive Coding", " Sophomore Computer Science Student"]),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < mySocialIcons.length; i++)
                      WidgetAnimator(
                        child: SocialMediaIconBtn(
                          icon: mySocialIcons[i],
                          socialLink: mySocialLinks[i],
                          height: height * 0.035,
                          horizontalPadding: width * 0.005,
                        ),
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
