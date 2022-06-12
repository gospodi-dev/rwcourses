import 'dart:convert';

import 'package:rwcourses/model/domain.dart';

class Course {
  final String courseId;
  final String name;
  final String description;
  final String artworkUrl;
  final String difficulty;
  final String contributors;
  final List<Domain> domains;

  Course(this.courseId, this.name, this.description, this.artworkUrl,
      this.contributors, this.difficulty, this.domains);

  Course.fromJson(Map<String, dynamic> json)
      : courseId = json['id'] as String,
        name = json['attributes']['name'] as String,
        description = json['attributes']['description_plain_text'] as String,
        artworkUrl = json['attributes']['card_artwork_url'] as String,
        difficulty = json['attributes']['difficulty'] as String,
        contributors = json['attributes']['contributor_string'] as String;
        // добавляем функции по анализу доменов курсов
        domains = [] {
          final domainData = json['relationships']['domains'] as List<dynamic>;
          if (domainData.length > 0) {
            for (var i = 0; i < domainData.length; i++) {
              final domain = Course.getDomain(
                json['relationships']['domains']['data'][i]['id'] as String);
                domains.add(domain);
            }
            }
          }
        }

  @override
  String toString() {
    return name + ': ' + contributors;
  }
}
