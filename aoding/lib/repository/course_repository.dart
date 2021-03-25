import '../constants.dart';
import '../model/course.dart';
import 'repository.dart';

class CourseRepository implements Repository {

  final String dataURL = "";

  @override
  Future<List<Course>> getCourses(int domainFilter) async {
    var courses = <Course>[];
    var url = dataURL;
    if (domainFilter != Constants.allFilter) {
      url += "";
    }

    return courses;
  }
}