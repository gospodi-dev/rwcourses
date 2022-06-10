import 'package:rwcourses/model/course.dart';
import 'repository.dart';

// класс хранилища курсов

class CourseRepository implements Repository {
  String dataURL =
      'https://api.raywenderlich.com/api/contents?filter[content_types][]=collection';

  @override
  Future<List<Course>> getCourses(int domainFilter) async {
    final courses = <Course>[];

    return courses;
  }
}
