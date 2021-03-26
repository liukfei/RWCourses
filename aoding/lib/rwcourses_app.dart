import 'package:aoding/ui/filter/course_filter_page.dart';
import 'package:aoding/ui/courses/courses_page.dart';
import 'package:flutter/material.dart';
import 'strings.dart';

class RWCoursesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CourseFilterPage()));
              }),
        ],
      ),
      body: CoursesPage(),
    );
  }
}
