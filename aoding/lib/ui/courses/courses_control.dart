import '../../model/course.dart';
import '../../repository/course_repository.dart';
import '../../repository/repository.dart';

class CoursesControl {
  final Repository _repository = CourseRepository();

  Future<List<Course>> fetchCourses(int domainFilter) {
    return _repository.getCourses(domainFilter);
  }
}