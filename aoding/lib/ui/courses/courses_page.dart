import 'package:aoding/repository/course_repository.dart';
import 'package:aoding/ui/course_detail/course_detail_page.dart';
import 'package:aoding/ui/courses/courses_control.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../model/course.dart';

class CoursesPage extends StatefulWidget {
  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final _control = CoursesControl(CourseRepository());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(
      future: _control.fetchCourses(Constants.allFilter),
      builder: (context, snapshot) {
        var courses = snapshot.data;
        if (null == courses) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: courses.length,
          itemBuilder: (BuildContext context, int position) {
            return _buildRow(courses[position]);
          },
        );
      },
    );
  }

  Widget _buildRow(Course course) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            course.name,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        subtitle: Text(
          course.domainsString,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 14.0),
        ),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            course.artworkUrl,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CourseDetailPage(
                course: course,
              ),
            ),
          );
        },
      ),
    );
  }
}
