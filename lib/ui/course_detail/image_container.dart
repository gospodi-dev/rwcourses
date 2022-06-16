import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Color placeholder;
  final String url;

  const ImageContainer(
      {Key? key,
      this.width,
      this.height,
      this.placeholder = const Color(0xFFEEEEEE),
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
