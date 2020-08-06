import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key, @required this.changeIndex}) : super(key: key);
  ValueChanged<int> changeIndex;
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  //定义一个私有变量标识当前选中的index
  int _selectedIndex = 0;
  //定义实现其底部导航栏

  List<BottomNavigationBarItem> _BottomItem() {
    List data = [
      {
        "icons": "assets/images/ic_tab_home_normal.png",
        "title": '主页',
        "activeIcon": "assets/images/ic_tab_home_active.png"
      },
      {
        "icons": "assets/images/ic_tab_subject_normal.png",
        "title": '书影音',
        "activeIcon": "assets/images/ic_tab_subject_active.png"
      },
      {
        "icons": "assets/images/ic_tab_group_normal.png",
        "title": '小组',
        "activeIcon": "assets/images/ic_tab_group_active.png"
      },
      {
        "icons": "assets/images/ic_tab_shiji_normal.png",
        "title": '市集',
        "activeIcon": "assets/images/ic_tab_shiji_active.png"
      },
      {
        "icons": "assets/images/ic_tab_profile_normal.png",
        "title": '我的',
        "activeIcon": "assets/images/ic_tab_profile_active.png"
      },
    ];
    return data
        .map((item) => BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(item["icons"]),
              size: 30.0,
            ),
            activeIcon: ImageIcon(
              AssetImage(item["activeIcon"]),
              size: 30.0,
            ),
            title: Text(item["title"])))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      items: _BottomItem(),
      onTap: (value) {
        widget.changeIndex(value);
        // 设置当前的index
        setState(() {
          _selectedIndex = value;
        });
      },
    ));
  }
}
