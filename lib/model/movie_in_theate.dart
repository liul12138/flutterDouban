import 'package:json_annotation/json_annotation.dart';
import 'movieModel.dart';
part 'movie_in_theate.g.dart';

@JsonSerializable()
class MovieInTheate extends Object {
  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'start')
  int start;

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'subjects')
  List<MovieSubject> subjects;

  MovieInTheate(this.count, this.start, this.total, this.title, this.subjects);

  factory MovieInTheate.fromJson(Map<String, dynamic> srcJson) =>
      _$MovieInTheateFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MovieInTheateToJson(this);
}
