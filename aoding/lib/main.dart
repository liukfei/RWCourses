import 'package:aoding/rwcourses_app.dart';
import 'package:aoding/state/filter_state_container.dart';
import 'package:aoding/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FilterStateContainer(
    child: MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(primaryColor: Colors.green.shade800),
      home: RWCoursesApp(),
    ),
  ));
}
