import '../constants.dart';
import '../model/course.dart';
import 'repository.dart';

class CourseRepository implements Repository {

  final String dataURL = "https://api.raywenderlich.com/api/contents?filter[content_types][]=collection";

  @override
  Future<List<Course>> getCourses(int domainFilter) async {
    var courses = <Course>[];
    var url = dataURL;
    if (domainFilter != Constants.allFilter) {
      url += "&filter[domain_ids][]=$domainFilter";
    }

    return courses;
  }
}