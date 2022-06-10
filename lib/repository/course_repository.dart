import 'package:rwcourses/model/course.dart';

import 'repository.dart';

// класс хранилища курсов

class CourseRepository implements Repository {
  @override
  Future<List<Course>> getCourses(int domainFilter) {
    // TODO: implement getCourses
    throw UnimplementedError();
  }
}
