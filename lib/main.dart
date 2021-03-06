import 'package:flutter/material.dart';
import 'page/HomePage/HomePage.dart';
import 'dart:io';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Color(0xff40BC55));
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //Flutter中, Color类仅接收整数作为参数. 你也可以使用fromARGB或者fromRGBO.
//比如拿到了一个16进制颜色#b74093. 因为Color还需要传入透明度, 255就是最大值(也就是不透明), 转为16进制就是0xFF, 所以我们只需这样表示:
        theme: ThemeData(primaryColor: Color(0xff40BC55)),
        //定义“/”为初始的route
        initialRoute: "/",
        routes: {"/": (context) => HomePage()});
  }
}
