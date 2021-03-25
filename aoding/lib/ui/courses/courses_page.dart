import 'package:aoding/ui/courses/courses_control.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../model/course.dart';

class CoursesPage extends StatefulWidget {
  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {

  final _control = CoursesControl();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(future: _control.fetchCourses(Constants.allFilter), builder: (context, snapshot) {
        var courses = snapshot.data;
        if (null == courses) {
          return Center(child: CircularProgressIndicator(),);
        }
        return Text('Courses');
    },);
  }
}
