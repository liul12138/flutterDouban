import 'package:douban/model/movie_in_theate.dart';
import 'package:flutter/material.dart';
import 'package:douban/Widget/searchInput.dart';
import 'package:douban/Widget/toolBox.dart';
import '../../../network/request.dart';
import '../../../Widget/videoItem.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Map<String, dynamic>> toolBoxContent = [
    {"url": "assets/images/find_movie.png", "title": "找电影"},
    {"url": "assets/images/douban_top.png", "title": "豆瓣榜单"},
    {"url": "assets/images/douban_guess.png", "title": "即将上映"},
    {"url": "assets/images/douban_film_list.png", "title": "豆瓣片单"},
  ];
  MovieInTheate movieInTheateData;
  List movieData = [];
  _setMovieData() {
    MoiveRequest.getMovieInTheate().then((value) => this.setState(() {
          movieInTheateData = value;
          movieData.addAll(movieInTheateData.subjects);
        }));
  }

  @override
  void initState() {
    super.initState();

    _setMovieData();
    print(movieData);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SearchInput(),
          MiniTabBar(),

          ToolBox(
            catData: toolBoxContent,
          ),
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: <Widget>[
          //     VideoItem(
          //       coverSrc: movieData[0].images.small,
          //       title: movieData[0].title,
          //       rating: movieData[0].rating.average,
          //     )
          //   ],
          // )
          //
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "影院热映",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                TextSpan(
                  text: "   ",
                ),
                TextSpan(
                    text: "|",
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.w200)),
                TextSpan(
                  text: "   ",
                ),
                TextSpan(
                    text: "豆瓣热门",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ])),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "全部${movieInTheateData.count}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 230.0,
            // width: 400.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieData.length,
                itemBuilder: (BuildContext context, int index) {
                  return VideoItem(
                    coverSrc: movieData[index].images.small,
                    title: movieData[index].title,
                    rating: movieData[index].rating.average,
                  );
                }),
          ),
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
