// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/screens/about/mobileAbout.dart';

import 'desktopAbout.dart';
import 'tabAbout.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      tablet: AboutTab(),
      desktop: AboutDesktop(),
    );
  }
}
