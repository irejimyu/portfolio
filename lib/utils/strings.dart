import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/models/page_model.dart';
import 'package:portfolio/models/social_model.dart';
import 'package:portfolio/models/work_model.dart';
import 'package:portfolio/screens/contact/contact_desktop.dart';
import 'package:portfolio/screens/contact/contact_mobile.dart';
import 'package:portfolio/screens/history/history_desktop.dart';
import 'package:portfolio/screens/history/history_mobile.dart';
import 'package:portfolio/screens/home/home_desktop.dart';
import 'package:portfolio/screens/home/home_mobile.dart';
import 'package:portfolio/screens/introduction/introduction_desktop.dart';
import 'package:portfolio/screens/introduction/introduction_mobile.dart';

class AppStrings {
  AppStrings._();

  static const String email = 'irejimyu@gmail.com';
  static const String github = 'github.com/irejimyu';
  static const String linkedin = 'linkedin.com/in/irejimyu';
  static const String phone = '+63 975 455 3481';

  static const String portfolio = 'Personal\nPortfolio';
  static const String position = 'Flutter Developer';
  static const String aboutTitle = 'ABOUT ME';
  static const String historyTitle = 'WORK HISTORY';
  static const String contactTitle = 'Interested in\nWorking Together?';
  static const String dropEmail = 'Drop me an email:';

  static List<PageApp> pageAppMobile = [
    PageApp(
      text: 'Home',
      page: const HomeMobile(),
    ),
    PageApp(
      text: 'About',
      page: const IntroductionMobile(),
    ),
    PageApp(
      text: 'Work',
      page: const HistoryMobile(),
    ),
    PageApp(
      text: 'Contact',
      page: const ContactMobile(),
    ),
  ];

  static List<PageApp> pageAppDesktop = [
    PageApp(
      text: 'Home',
      page: const HomeDesktop(),
    ),
    PageApp(
      text: 'About',
      page: const IntroductionDesktop(),
    ),
    PageApp(
      text: 'Work',
      page: const HistoryDesktop(),
    ),
    PageApp(
      text: 'Contact',
      page: const ContactDesktop(),
    ),
  ];

  static List<Social> socialLinks = [
    Social(
      icon: const FaIcon(FontAwesomeIcons.github),
      link: github,
      scheme: UrlScheme.https,
    ),
    Social(
      icon: const FaIcon(FontAwesomeIcons.linkedin),
      link: linkedin,
      scheme: UrlScheme.https,
    ),
    Social(
      icon: const Icon(Icons.email),
      link: email,
      scheme: UrlScheme.mailto,
    ),
    Social(
      icon: const Icon(Icons.phone),
      link: phone,
      scheme: UrlScheme.tel,
    ),
  ];

  static List<Work> workHistory = [
    Work(
      start: DateTime(2021, 04),
      end: DateTime(2023, 07),
      position: 'Flutter Developer',
      company: 'MNK SOFT. CORPORATION',
      skills: const [
        'Flutter',
        'Firebase',
        'Angular',
        'AngularJS',
        'Node.js',
        'MySQL',
        'Python',
        'Git',
      ],
    ),
    Work(
      start: DateTime(2019, 10),
      end: DateTime(2021, 01),
      position: 'Junior Programmer',
      company: 'Lee Systems Technology Ventures',
      skills: const [
        'Angular',
        'AngularJS',
        'Ionic',
        'Node.js',
        'C#',
        'MySQL',
        'Php',
        'Git',
      ],
    ),
  ];
}
