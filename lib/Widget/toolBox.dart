import 'package:flutter/material.dart';

class ToolBox extends StatelessWidget {
  const ToolBox({Key key, @required this.catData}) : super(key: key);
  final List<Map<String, dynamic>> catData;

  @override
  Widget build(BuildContext context) {
    List<Widget> boxItem = catData
        .map((item) => Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xfff0f0f0), width: 2.0),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
                height: 75.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      item["url"],
                      scale: 3.5,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(item["title"])
                  ],
                ),
              ),
            ))
        .toList();
    return Row(children: boxItem);
  }
}
