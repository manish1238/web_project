import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../models/skillmodel.dart';
import '../../widgets/screenhelper.dart';

List<Skill> skills = [
  Skill(
    skill: "Flutter",
    percentage: 70,
  ),
  Skill(
    skill: "Dart",
    percentage: 90,
  ),
  Skill(
    skill: "C++",
    percentage: 80,
  ),
  Skill(
    skill: "Java",
    percentage: 60,
  ),
  Skill(
    skill: "Python",
    percentage: 50,
  ),
  Skill(
    skill: "HTML",
    percentage: 70,
  ),
  Skill(
    skill: "CSS",
    percentage: 50,
  ),
  Skill(
    skill: "Javascript",
    percentage: 20,
  ),
];

class Skills extends StatelessWidget {
  const Skills({super.key});

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
      color: Colors.grey[900],
      child: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Flex(
              direction: ScreenHelper.isMobile(context) ? Axis.vertical : Axis.horizontal,
              children: [
                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 2,
                  child: Image.asset(
                    "assets/images/p3.png",
                    width: 300.0,
                  ),
                ),
                const SizedBox(
                  width: 50.0,
                ),
                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      Text(
                        "SKILLS",
                        style: GoogleFonts.oswald(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 28.0,
                          height: 1.3,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "These are my Skills",
                        style: TextStyle(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: skills
                            .map(
                              (skill) => Container(
                                margin: const EdgeInsets.only(bottom: 15.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: skill.percentage,
                                      child: Container(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        alignment: Alignment.centerLeft,
                                        height: 38.0,
                                        child: Text(skill.skill, style: TextStyle(color: Colors.black)),
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Expanded(
                                      // remaining (blank part)
                                      flex: 100 - skill.percentage,
                                      child: const Divider(
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "${skill.percentage}%",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
