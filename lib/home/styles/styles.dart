import 'package:flutter/material.dart';

// ******************* App Styles ******************* //

TextStyle textHeadline = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 255, 255, 255),
);

TextStyle textSubHeadline = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.normal,
  color: Color.fromARGB(255, 255, 255, 255),
);

Color primaryColor = Color.fromARGB(255, 76, 167, 241);
Color secondaryColor = Color.fromARGB(255, 31, 89, 137);

// **************************************************** //

// ******************* Custom Logo ******************* //

Image customLogo() {
  return Image.asset(
    'assets/images/logo.png',
    height: 200,
    width: 200,
  );
}

// ************************************************** //

// ******************* Custom Background ******************* //

BoxDecoration customBackground() {
  return const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/background.png"),
      fit: BoxFit.cover,
    ),
  );
}

// ************************************************** //

