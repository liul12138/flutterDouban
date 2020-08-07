// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_in_theate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieInTheate _$MovieInTheateFromJson(Map<String, dynamic> json) {
  return MovieInTheate(
    json['count'] as int,
    json['start'] as int,
    json['total'] as int,
    json['title'] as String,
    (json['subjects'] as List)
        ?.map((e) =>
            e == null ? null : MovieSubject.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MovieInTheateToJson(MovieInTheate instance) =>
    <String, dynamic>{
      'count': instance.count,
      'start': instance.start,
      'total': instance.total,
      'title': instance.title,
      'subjects': instance.subjects,
    };
