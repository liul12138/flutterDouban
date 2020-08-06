import 'package:flutter/material.dart';
import 'package:douban/Widget/searchInput.dart';
import 'package:douban/Widget/toolBox.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SearchInput(),
          MiniTabBar(),
          Expanded(
              child: Center(
            child: ToolBox(
              catData: [
                {"url": "assets/images/douban_top.png"}
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class MiniTabBar extends StatefulWidget {
  MiniTabBar({Key key}) : super(key: key);

  @override
  _MiniTabBarState createState() => _MiniTabBarState();
}

class _MiniTabBarState extends State<MiniTabBar>
    with SingleTickerProviderStateMixin {
  //定义tab栏的内容
  static List<String> tabsItem = ["电影", "电视", "读书", "原创小说", "音乐", "同城"];
  //定义tabcontroller
  TabController _controller;
  @override
  void initState() {
    _controller = TabController(
      length: tabsItem.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TabBar(
        // isScrollable: true,
        tabs: tabsItem
            .map((e) => Text(
                  e,
                  style: TextStyle(fontSize: 16),
                ))
            .toList(),
        controller: this._controller,
      ),
    );
  }
}
