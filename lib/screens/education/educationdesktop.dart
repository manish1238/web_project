import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../models/educationmodel.dart';
import '../../widgets/screenhelper.dart';

final List<Education> educationList = [
  Education(
    description: "Bachelor of Engineering - B.E\nComputer Engineering",
    linkName: "https://vcet.edu.in/",
    period: "2019 - PRESENT",
    name: "Vidyavardhini's College of Engineering and Technology",
  ),
  Education(
    description: "11th - 12th\nComputer Science\nHSC - 83.54%",
    linkName: "http://www.vivacollege.org/",
    period: "2017 - 2019",
    name: "Viva College",
  ),
  Education(
    description: "Jr kg to 10th\nSSC - 87.60%",
    linkName: "https://www.facebook.com/ludhani.vidyamandir.3",
    period: "2006 - 2017",
    name: "Ludhani Vidya Mandir High School",
  ),
];

class EducationDesktop extends StatelessWidget {
  bool isHover = false;

  EducationDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(1000.0),
      tablet: _buildUi(760.0),
      mobile: _buildUi(getMobileMaxWidth(context)),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 50),
          Text(
            "EDUCATION",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Wrap(
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 400.0),
                child: const Text(
                  "My Education.",
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: educationList
                    .map(
                      (education) => SizedBox(
                        width: constraints.maxWidth / 2.0 - 20.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              education.name,
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              education.period,
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              education.description,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: kCaptionColor,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: InkWell(
                                onTap: () => launchURL(education.linkName),
                                child: Text(
                                  education.linkName,
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          )
        ],
      ),
    );
  }
}
