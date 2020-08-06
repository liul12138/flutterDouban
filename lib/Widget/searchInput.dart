import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  SearchInput({Key key}) : super(key: key);

  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      height: 60.0,
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
                height: 50.0,
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 5.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    style: TextStyle(fontSize: 28),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: ImageIcon(
                          AssetImage('assets/images/scan.png'),
                          size: 18,
                        )),
                  ),
                )),
          ),
          Container(
            width: 60.0,
            alignment: Alignment.center,
            child: Icon(
              Icons.mail_outline,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
