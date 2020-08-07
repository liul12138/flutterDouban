import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class VideoItem extends StatefulWidget {
  VideoItem({Key key, this.coverSrc, this.rating, this.title})
      : super(key: key);
  String coverSrc;
  double rating;
  String title;
  @override
  _VideoItemState createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 190.0,

      child: Column(
        children: <Widget>[
          Container(
              height: 180,
              width: 130.0,
              padding: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          child: Image.network(
                        widget.coverSrc,
                        fit: BoxFit.fitWidth,
                      )),
                      Positioned(
                          top: 2,
                          left: 2,
                          child: ImageIcon(
                            AssetImage('assets/images/ic_info_wish.png'),
                            color: Colors.white,
                          ))
                    ],
                  ))),
          Text(
            widget.title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              SmoothStarRating(
                  allowHalfRating: true,
                  onRated: (v) {},
                  starCount: 5,
                  rating: widget.rating / 2,
                  size: 18.0,
                  color: Colors.yellow[400],
                  borderColor: Colors.yellow[400],
                  spacing: 0.0),
              Text(widget.rating.toString())
            ],
          )
        ],
      ),
    );
  }
}
