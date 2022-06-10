import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:rwcourses/strings.dart';
import 'ui/courses/courses_page.dart';

class RWCoursesApp extends StatelessWidget {
  const RWCoursesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
      ),
      body: const CoursesPage(),
    );
  }
}
