import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'experiencedesktop.dart';
import 'experiencemobile.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ExperienceMobile(),
      desktop: ExperienceDesktop(),
    );
  }
}
