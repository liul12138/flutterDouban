import 'package:dio/dio.dart';
import 'api.dart';
import '../model/movie_in_theate.dart';

//dio的默认网络请求
const apiKey = '0b2bdeda43b5688921839c8ecb20399b';
BaseOptions options = new BaseOptions(
    baseUrl: "https://api.douban.com",
    connectTimeout: 5000,
    receiveTimeout: 3000,
    queryParameters: {"apikey": apiKey});
Dio _dio = new Dio(options);

//定义一个方法用于转换json为model
_mapJsonToModel(json) {
  return MovieInTheate.fromJson(json);
}

//
class MoiveRequest {
  MoiveRequest({this.id});
  var id;

  static Future<MovieInTheate> getMovieInTheate() async {
    try {
      Response response = await _dio.get(
        MovieApi.IN_THEATERS,
      );
      print(response.data.runtimeType);
      Map _data = response.data;
      return _mapJsonToModel(_data);
    } catch (e) {
      print("出错:$e");
    }
  }

  static Future<MovieInTheate> getMovieTop250({int count = 10}) async {
    try {
      Response response = await _dio.get(MovieApi.TOP250, queryParameters: {
        "count": count,
      });
      print(response.data.runtimeType);
      Map _data = response.data;
      return _mapJsonToModel(_data);
    } catch (e) {
      print("出错:$e");
    }
  }

  static Future<MovieInTheate> getMovieWeekly() async {
    try {
      Response response = await _dio.get(
        MovieApi.WEEKLY,
      );
      print(response.data.runtimeType);
      Map _data = response.data;
      return _mapJsonToModel(_data);
    } catch (e) {
      print("出错:$e");
    }
  }
}
