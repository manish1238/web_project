// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'portfolioDesktop.dart';
import 'portfolioMobile.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const PortfolioMobileTab(),
      tablet: const PortfolioMobileTab(),
      desktop: const PortfolioDesktop(),
    );
  }
}
