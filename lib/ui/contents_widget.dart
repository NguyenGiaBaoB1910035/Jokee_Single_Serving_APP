import 'package:flutter/material.dart';
import 'package:jokee_single_serving_app/ui/message.dart';
import 'package:jokee_single_serving_app/ui/text_widget.dart';
import 'content_manager.dart';

class ContentsWidget extends StatefulWidget {
  const ContentsWidget({super.key});

  @override
  State<ContentsWidget> createState() => _ContentsWidgetState();
}

class _ContentsWidgetState extends State<ContentsWidget> {
  int _index = 0;

  void _updateIndex() {
    setState(() {
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final contentManager = ContentManager();
    final contents = contentManager.items;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: (_index >= contents.length)
          ? const Message()
          : Container(
              // color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: TextWidget(contents[_index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(150, 40),
                            backgroundColor: Colors.blue,
                          ),
                          child: const Text('This is Funny!',
                              style: TextStyle(fontSize: 14)),
                          onPressed: () {
                            _updateIndex();
                            print("$_index");
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(150, 40),
                            backgroundColor: Colors.green,
                          ),
                          child: const Text('This is not Funny.',
                              style: TextStyle(fontSize: 14)),
                          onPressed: () {
                            _updateIndex();
                            print("$_index");
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
