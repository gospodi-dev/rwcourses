import 'repository.dart';

// класс хранилища курсов

class CourseRepository implements Repository {
  String dataURL =
      'https://api.raywenderlich.com/api/contents?filter[content_types][]=collection';
}
