// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'certificatesdesktop.dart';
import 'certificatesmobile.dart';

class Certificates extends StatelessWidget {
  const Certificates({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const CertificatesMobile(),
      tablet: const CertificatesMobile(),
      desktop: CertificatesDesktop(),
    );
  }
}
