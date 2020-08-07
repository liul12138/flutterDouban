import 'package:douban/model/movieModel.dart';
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
  MovieInTheate _movieInTheateData;
  List _movieInTheateList = [];
  MovieInTheate _topList;
  int _movieInTheateCount;
  List<MovieSubject> _topListsubjects = [];
  _setMovieData() {
    MoiveRequest.getMovieInTheate().then((value) => {
          if (mounted)
            {
              this.setState(() {
                _movieInTheateData = value;
                _movieInTheateList.addAll(_movieInTheateData.subjects);
                _movieInTheateCount = value.count;
              })
            }
        });
    //获取豆瓣top250的数据
    MoiveRequest.getMovieTop250(count: 3).then((value) => {
          if (mounted)
            {
              this.setState(() {
                _topList = value;
                _topListsubjects.addAll(value.subjects);
                print(_topListsubjects);
              })
            }
        });
  }

  @override
  void initState() {
    super.initState();

    _setMovieData();
    print(_movieInTheateList);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SearchInput(),
          MiniTabBar(),
//-----------------------顶部工具栏------------------
          ToolBox(
            catData: toolBoxContent,
          ),

          SizedBox(height: 10.0),
//----------------------横向电影列表-----------------
          MovieList(
            count: _movieInTheateCount,
            ListData: _movieInTheateList,
          ),
          SizedBox(
            height: 10,
          ),
          //----------------------豆瓣榜单---------------------
          DoubanListItem(
            listData: _topListsubjects,
            title: "豆瓣TOP250",
          )
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
  static List<String> tabsItem = [
    "电影",
    "电视",
    "读书",
  ];
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
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textDirection: TextDirection.ltr,
                ))
            .toList(),
        controller: this._controller,
      ),
    );
  }
}

//
class MovieList extends StatefulWidget {
  MovieList({Key key, this.count, this.ListData}) : super(key: key);
  int count;
  List ListData;
  @override
  _MovieListState createState() => _MovieListState();
}

//横向电影列表
class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(
              width: 12.0,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "影院热映",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              TextSpan(
                text: "   ",
              ),
              TextSpan(
                  text: "|",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w200)),
              TextSpan(
                text: "   ",
              ),
              TextSpan(
                  text: "豆瓣热门",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ])),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "全部${widget.count}",
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
        Container(
          height: 230.0,
          // width: 400.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.count,
              itemBuilder: (BuildContext context, int index) {
                return VideoItem(
                  coverSrc: widget.ListData[index].images.small,
                  title: widget.ListData[index].title,
                  rating: widget.ListData[index].rating.average,
                );
              }),
        ),
      ],
    );
  }
}

class DoubanListItem extends StatefulWidget {
  const DoubanListItem({Key key, this.title, this.listData}) : super(key: key);
  final String title;
  final List listData;

  @override
  _DoubanListItemState createState() => _DoubanListItemState();
}

class _DoubanListItemState extends State<DoubanListItem> {
  _getList(List<MovieSubject> listData) {
    return listData
        .map((e) => Row(
              children: <Widget>[
                Image.network(
                  e.images.small,
                  scale: 4.5,
                ),
                Text(e.title),
              ],
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 300,
        padding: EdgeInsets.all(30),
        child: Stack(
          children: <Widget>[
            Positioned(child: Text(widget.title)),
            Positioned(
              child: Text('豆瓣榜单'),
              right: 0,
              top: 0,
            ),
            Positioned(
                child: ListView(
              children: _getList(widget.listData),
            ))
          ],
        ));
  }
}
