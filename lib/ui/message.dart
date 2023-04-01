import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("That's all the jokes for today!",
            style: TextStyle(color: Colors.black54, fontSize: 16)),
        Text("Come back another day!",
            style: TextStyle(color: Colors.black54, fontSize: 16)),
      ],
    );
  }
}
