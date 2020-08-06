import 'package:flutter/material.dart';
import 'package:douban/Widget/BottomBar.dart';
import 'package:douban/Widget/searchInput.dart';
import 'package:douban/page/HomePage/tabPages/Home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabView = [Home(), Text('第二页')];
  int _index = 0;
  void _changeIndex(int value) {
    //通过一个valueChange函数触发回调更改其index
    this.setState(() {
      this._index = value;
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              //通过index来指定当前的view
              child: tabView[_index],
            ),
            BottomBar(
              changeIndex: _changeIndex,
            ),
          ],
        ),
      ),
    ));
  }
}
