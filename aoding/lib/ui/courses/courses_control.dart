import '../../model/course.dart';
import '../../repository/repository.dart';

class CoursesControl {
  final Repository _repository;

  CoursesControl(this._repository);

  Future<List<Course>> fetchCourses(int domainFilter) {
    return _repository.getCourses(domainFilter);
  }
}
