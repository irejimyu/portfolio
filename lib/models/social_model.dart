import 'package:flutter/material.dart';

enum UrlScheme {
  https,
  mailto,
  tel,
  sms,
}

class Social {
  Widget icon;
  String link;
  UrlScheme scheme;

  Social({
    required this.icon,
    required this.link,
    required this.scheme,
  });
}
