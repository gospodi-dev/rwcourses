import 'dart:convert';

import 'package:rwcourses/model/course.dart';
import 'repository.dart';
import '../constants.dart';
import 'package:http/http.dart' as http;

// класс хранилища курсов

class CourseRepository implements Repository {
  String dataURL =
      'https://api.raywenderlich.com/api/contents?filter[content_types][]=collection';

  @override
  Future<List<Course>> getCourses(int domainFilter) async {
    final courses = <Course>[];
    var url = dataURL;

    if (domainFilter != Constants.allFilter) {
      url += ';&filter[domain_ids][]=$domainFilter';
    }

    final uri = Uri.parse(url); // преобразуем полученный url
    final response = await http.get(uri); // делаем фактический запрос
    final apiResponse = json.decoder(response.body) as Map<String, dynamic>;
    print(apiResponse);

    return courses;
  }
}
