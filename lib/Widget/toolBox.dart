import 'package:flutter/material.dart';

class ToolBox extends StatelessWidget {
  const ToolBox({Key key, @required this.catData}) : super(key: key);
  final List<Map<String, dynamic>> catData;

  @override
  Widget build(BuildContext context) {
    List<Widget> boxItem = catData
        .map((item) => Container(
              alignment: Alignment.topLeft,
              child: Image.asset(item["url"]),
            ))
        .toList();
    return Row(children: boxItem);
  }
}
