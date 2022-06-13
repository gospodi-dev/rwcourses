import '../../repository/repository.dart';
import '../../model/course.dart';

class CoursesController {
  final Repository _repository;

  Future<List<Course>> fetchCourses(int domainFilter) {
    return _repository
        .getCourses(domainFilter); // метод возвращающий список курсов в будущем
  }
}
