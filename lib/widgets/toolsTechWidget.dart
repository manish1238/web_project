import 'package:flutter/material.dart';

import '../constants.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({Key? key, required this.techName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: myPrimaryColor,
            size: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(" $techName")
        ],
      ),
    );
  }
}
