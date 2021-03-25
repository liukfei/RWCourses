import 'package:aoding/ui/courses/courses_page.dart';
import 'package:flutter/material.dart';
import 'strings.dart';

class RWCoursesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
      ),
      body: CoursesPage(),
    );
  }
}
