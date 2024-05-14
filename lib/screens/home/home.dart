// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'homeDesktop.dart';
import 'homeMobile.dart';
import 'homeTab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeMobile(),
      tablet: const HomeTab(),
      desktop: const HomeDesktop(),
    );
  }
}
