import 'package:aoding/rwcourses_app.dart';
import 'package:aoding/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: Strings.appTitle,
    theme: ThemeData(primaryColor: Colors.green.shade800),
    home: RWCoursesApp(),
  ));
}
