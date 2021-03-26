import 'package:flutter/material.dart';

import '../../strings.dart';

class CourseFilterPage extends StatefulWidget {
  @override
  _CourseFilterPageState createState() => _CourseFilterPageState();
}

class _CourseFilterPageState extends State<CourseFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.filter),
      ),
      body: Container(),
    );
  }
}
