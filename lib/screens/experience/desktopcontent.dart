// import 'package:flutter/material.dart';
// import 'package:steps/steps.dart';

// class ExperiencesDesktop extends StatelessWidget {
//   const ExperiencesDesktop({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width * 0.6,
//       alignment: Alignment.topCenter,
//       child: Steps(
//         direction: Axis.vertical,
//         size: 20.0,
//         path: {'color': Colors.lightBlue.shade200, 'width': 2.75},
//         steps: [
//           {
//             'color': const Color(0xff64FFDA),
//             'background': Colors.indigo,
//             'label': '👷🏻‍♀️',
//             'content': Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 const Text(
//                   "Girlscript Summer of Code",
//                   style: TextStyle(
//                     fontSize: 22.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 6.0,
//                 ),
//                 Text(
//                   "Participant Contributor at Girlscript Summer of Code Open Source Programme\n",
//                   style: TextStyle(
//                     fontSize: 13.0,
//                     color: const Color(0xffCCD6F6).withOpacity(0.5),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 Text(
//                   "March 2021 - May 2021",
//                   style: TextStyle(
//                     fontSize: 12.0,
//                     color: const Color(0xffCCD6F6).withOpacity(0.5),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           },
//           {
//             'color': const Color(0xff64FFDA),
//             'background': Colors.indigo,
//             'label': '👷🏻‍♀️',
//             'content': Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 const Text(
//                   "Code for Cause",
//                   style: TextStyle(
//                     fontSize: 22.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 6.0,
//                 ),
//                 Text(
//                   "Spring of Code participant\n",
//                   style: TextStyle(
//                     fontSize: 13.0,
//                     color: const Color(0xffCCD6F6).withOpacity(0.5),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 Text(
//                   "March - 2021 - April 2021 ",
//                   style: TextStyle(
//                     fontSize: 12.0,
//                     color: const Color(0xffCCD6F6).withOpacity(0.5),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           },
//           {
//             'color': const Color(0xff64FFDA),
//             'background': Colors.indigo,
//             'label': '🌟',
//             'content': Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 const Text(
//                   "Innovatiive Creators",
//                   style: TextStyle(
//                     fontSize: 22.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 6.0,
//                 ),
//                 Text(
//                   "Software Developer\nAs a Intern at Innovatiive Creators my job is to work with team to develop Android and Ios Applications in Flutter for the clients that contact the company.\nI work closely  with the other team members in such tasks as developing, contributing, troubleshooting and debugging.\nThrough out my internship i worked on:\n1)Adhik, adhik admin and adhik master app\n2)The tiffinwala co. app\n3)Mango and mango admin app\n",
//                   style: TextStyle(
//                     fontSize: 13.0,
//                     color: const Color(0xffCCD6F6).withOpacity(0.5),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 Text(
//                   "December 2020 - March 2021 ",
//                   style: TextStyle(
//                     fontSize: 12.0,
//                     color: const Color(0xffCCD6F6).withOpacity(0.5),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           },
//           {
//             'color': const Color(0xff64FFDA),
//             'background': Colors.indigo,
//             'label': '👷🏻‍♀️',
//             'content': Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 const Text(
//                   "GirlScript Foundation Education Outreach Scholar",
//                   style: TextStyle(
//                     fontSize: 22.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 6.0,
//                 ),
//                 Text(
//                   "Trainee.\n",
//                   style: TextStyle(
//                     fontSize: 13.0,
//                     color: const Color(0xffCCD6F6).withOpacity(0.5),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 Text(
//                   "Febraury - 2021 - February - 2021 ",
//                   style: TextStyle(
//                     fontSize: 12.0,
//                     color: const Color(0xffCCD6F6).withOpacity(0.5),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           },
//           {
//             'color': const Color(0xff64FFDA),
//             'background': Colors.indigo,
//             'label': '👷🏻‍♀️',
//             'content': Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 const Text(
//                   "Swabhav Techlabs",
//                   style: TextStyle(
//                     fontSize: 22.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 6.0,
//                 ),
//                 Text(
//                   "As a intern at Swabhav Techlabs  my job was to develop robust Code for java Applications.\n",
//                   style: TextStyle(
//                     fontSize: 13.0,
//                     color: const Color(0xffCCD6F6).withOpacity(0.5),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 Text(
//                   "December - 2020 - January - 2021 ",
//                   style: TextStyle(
//                     fontSize: 12.0,
//                     color: const Color(0xffCCD6F6).withOpacity(0.5),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           },
//         ],
//       ),
//     );
//   }
// }
