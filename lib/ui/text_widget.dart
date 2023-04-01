import 'package:flutter/material.dart';

import '../models/content.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(this.content, {super.key});
  final Content content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content.content,
      style: const TextStyle(color: Colors.black54, fontSize: 14),
    );
  }
}
