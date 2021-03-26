import 'package:aoding/model/course.dart';
import 'package:aoding/ui/course_detail/image_container.dart';
import 'package:flutter/material.dart';
import '../../utils/string_extension.dart';

class CourseDetailPage extends StatelessWidget {
  final Course course;

  CourseDetailPage({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildBanner(),
          _buildMain(context),
          _buildDetails(context),
        ],
      ),
    );
  }

  Widget _buildBanner() {
    return Hero(
      tag: "cardArtwork-${course.courseId}",
      transitionOnUserGestures: true,
      child: ImageContainer(
        height: 200,
        url: course.artworkUrl,
      ),
    );
  }

  Widget _buildMain(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            course.name,
            style:
                Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 24.0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              course.description,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetails(BuildContext context) {
    final style = TextStyle(fontSize: 16.0);
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Domain(s): ${course.domainsString}',
            style: style,
          ),
          Text(
            'Level: ${course.difficulty.capitalize()}',
            style: style,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              '${course.contributors}',
              style: style,
            ),
          ),
        ],
      ),
    );
  }
}
