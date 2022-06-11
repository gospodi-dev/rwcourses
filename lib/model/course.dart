class Course {
  final String courseId;
  final String name;
  final String description;
  final String artworkUrl;
  final String difficulty;
  final String contributors;

  Course(this.courseId, this.name, this.description);

  Course.fromJson(Map<String, dynamic> json)
      : courseId = json['id'] as String,
        name = json['attributes']['name'] as String,
        description = json['attributes']['description_plain_text'] as String;

  @override
  String toString() {
    return name;
  }
}
