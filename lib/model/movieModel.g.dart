// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movieModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieSubject _$MovieSubjectFromJson(Map<String, dynamic> json) {
  return MovieSubject(
    json['rating'] == null
        ? null
        : Rating.fromJson(json['rating'] as Map<String, dynamic>),
    json['reviews_count'] as int,
    json['videos'] as List,
    json['wish_count'] as int,
    json['original_title'] as String,
    (json['blooper_urls'] as List)?.map((e) => e as String)?.toList(),
    json['collect_count'] as int,
    json['images'] == null
        ? null
        : Images.fromJson(json['images'] as Map<String, dynamic>),
    json['douban_site'] as String,
    json['year'] as String,
    (json['popular_comments'] as List)
        ?.map((e) => e == null
            ? null
            : Popular_comments.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['alt'] as String,
    json['id'] as String,
    json['mobile_url'] as String,
    json['photos_count'] as int,
    json['pubdate'] as String,
    json['title'] as String,
    json['has_video'] as bool,
    json['share_url'] as String,
    (json['languages'] as List)?.map((e) => e as String)?.toList(),
    json['schedule_url'] as String,
    (json['writers'] as List)
        ?.map((e) =>
            e == null ? null : Writers.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['pubdates'] as List)?.map((e) => e as String)?.toList(),
    json['website'] as String,
    (json['tags'] as List)?.map((e) => e as String)?.toList(),
    json['has_schedule'] as bool,
    (json['durations'] as List)?.map((e) => e as String)?.toList(),
    (json['genres'] as List)?.map((e) => e as String)?.toList(),
    (json['trailers'] as List)
        ?.map((e) =>
            e == null ? null : Trailers.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['trailer_urls'] as List)?.map((e) => e as String)?.toList(),
    json['has_ticket'] as bool,
    (json['bloopers'] as List)
        ?.map((e) =>
            e == null ? null : Bloopers.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['clip_urls'] as List)?.map((e) => e as String)?.toList(),
    (json['casts'] as List)
        ?.map(
            (e) => e == null ? null : Casts.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['countries'] as List)?.map((e) => e as String)?.toList(),
    json['mainland_pubdate'] as String,
    (json['photos'] as List)
        ?.map((e) =>
            e == null ? null : Photos.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['summary'] as String,
    (json['clips'] as List)
        ?.map(
            (e) => e == null ? null : Clips.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['subtype'] as String,
    (json['directors'] as List)
        ?.map((e) =>
            e == null ? null : Directors.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['comments_count'] as int,
    (json['popular_reviews'] as List)
        ?.map((e) => e == null
            ? null
            : Popular_reviews.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['ratings_count'] as int,
    (json['aka'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$MovieSubjectToJson(MovieSubject instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'reviews_count': instance.reviewsCount,
      'videos': instance.videos,
      'wish_count': instance.wishCount,
      'original_title': instance.originalTitle,
      'blooper_urls': instance.blooperUrls,
      'collect_count': instance.collectCount,
      'images': instance.images,
      'douban_site': instance.doubanSite,
      'year': instance.year,
      'popular_comments': instance.popularComments,
      'alt': instance.alt,
      'id': instance.id,
      'mobile_url': instance.mobileUrl,
      'photos_count': instance.photosCount,
      'pubdate': instance.pubdate,
      'title': instance.title,
      'has_video': instance.hasVideo,
      'share_url': instance.shareUrl,
      'languages': instance.languages,
      'schedule_url': instance.scheduleUrl,
      'writers': instance.writers,
      'pubdates': instance.pubdates,
      'website': instance.website,
      'tags': instance.tags,
      'has_schedule': instance.hasSchedule,
      'durations': instance.durations,
      'genres': instance.genres,
      'trailers': instance.trailers,
      'trailer_urls': instance.trailerUrls,
      'has_ticket': instance.hasTicket,
      'bloopers': instance.bloopers,
      'clip_urls': instance.clipUrls,
      'casts': instance.casts,
      'countries': instance.countries,
      'mainland_pubdate': instance.mainlandPubdate,
      'photos': instance.photos,
      'summary': instance.summary,
      'clips': instance.clips,
      'subtype': instance.subtype,
      'directors': instance.directors,
      'comments_count': instance.commentsCount,
      'popular_reviews': instance.popularReviews,
      'ratings_count': instance.ratingsCount,
      'aka': instance.aka,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return Rating(
    json['max'] as int,
    (json['average'] as num)?.toDouble(),
    json['details'] == null
        ? null
        : Details.fromJson(json['details'] as Map<String, dynamic>),
    json['stars'] as String,
    json['min'] as int,
  );
}

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'max': instance.max,
      'average': instance.average,
      'details': instance.details,
      'stars': instance.stars,
      'min': instance.min,
    };

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return Details(
    json['1'] as num,
    json['2'] as num,
    json['3'] as num,
    json['4'] as num,
    json['5'] as num,
  );
}

Map<String, dynamic> _$DetailsToJson(Details instance) => <String, dynamic>{
      '1': instance.oneStart,
      '2': instance.twoStart,
      '3': instance.threeStart,
      '4': instance.fourStart,
      '5': instance.fiveStart,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images(
    json['small'] as String,
    json['large'] as String,
    json['medium'] as String,
  );
}

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
      'medium': instance.medium,
    };

Popular_comments _$Popular_commentsFromJson(Map<String, dynamic> json) {
  return Popular_comments(
    json['rating'] == null
        ? null
        : Rating.fromJson(json['rating'] as Map<String, dynamic>),
    json['useful_count'] as int,
    json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>),
    json['subject_id'] as String,
    json['content'] as String,
    json['created_at'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$Popular_commentsToJson(Popular_comments instance) =>
    <String, dynamic>{
      'rating': instance.userRating,
      'useful_count': instance.usefulCount,
      'author': instance.author,
      'subject_id': instance.subjectId,
      'content': instance.content,
      'created_at': instance.createdAt,
      'id': instance.id,
    };

userRating _$userRatingFromJson(Map<String, dynamic> json) {
  return userRating(
    json['max'] as int,
    json['value'] as int,
    json['min'] as int,
  );
}

Map<String, dynamic> _$userRatingToJson(userRating instance) =>
    <String, dynamic>{
      'max': instance.max,
      'value': instance.value,
      'min': instance.min,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author(
    json['uid'] as String,
    json['avatar'] as String,
    json['signature'] as String,
    json['alt'] as String,
    json['id'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'uid': instance.uid,
      'avatar': instance.avatar,
      'signature': instance.signature,
      'alt': instance.alt,
      'id': instance.id,
      'name': instance.name,
    };

Writers _$WritersFromJson(Map<String, dynamic> json) {
  return Writers(
    json['avatars'] == null
        ? null
        : Avatars.fromJson(json['avatars'] as Map<String, dynamic>),
    json['name_en'] as String,
    json['name'] as String,
    json['alt'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$WritersToJson(Writers instance) => <String, dynamic>{
      'avatars': instance.avatars,
      'name_en': instance.nameEn,
      'name': instance.name,
      'alt': instance.alt,
      'id': instance.id,
    };

Avatars _$AvatarsFromJson(Map<String, dynamic> json) {
  return Avatars(
    json['small'] as String,
    json['large'] as String,
    json['medium'] as String,
  );
}

Map<String, dynamic> _$AvatarsToJson(Avatars instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
      'medium': instance.medium,
    };

Trailers _$TrailersFromJson(Map<String, dynamic> json) {
  return Trailers(
    json['medium'] as String,
    json['title'] as String,
    json['subject_id'] as String,
    json['alt'] as String,
    json['small'] as String,
    json['resource_url'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$TrailersToJson(Trailers instance) => <String, dynamic>{
      'medium': instance.medium,
      'title': instance.title,
      'subject_id': instance.subjectId,
      'alt': instance.alt,
      'small': instance.small,
      'resource_url': instance.resourceUrl,
      'id': instance.id,
    };

Bloopers _$BloopersFromJson(Map<String, dynamic> json) {
  return Bloopers(
    json['medium'] as String,
    json['title'] as String,
    json['subject_id'] as String,
    json['alt'] as String,
    json['small'] as String,
    json['resource_url'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$BloopersToJson(Bloopers instance) => <String, dynamic>{
      'medium': instance.medium,
      'title': instance.title,
      'subject_id': instance.subjectId,
      'alt': instance.alt,
      'small': instance.small,
      'resource_url': instance.resourceUrl,
      'id': instance.id,
    };

Casts _$CastsFromJson(Map<String, dynamic> json) {
  return Casts(
    json['avatars'] == null
        ? null
        : Avatars.fromJson(json['avatars'] as Map<String, dynamic>),
    json['name_en'] as String,
    json['name'] as String,
    json['alt'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$CastsToJson(Casts instance) => <String, dynamic>{
      'avatars': instance.avatars,
      'name_en': instance.nameEn,
      'name': instance.name,
      'alt': instance.alt,
      'id': instance.id,
    };

Photos _$PhotosFromJson(Map<String, dynamic> json) {
  return Photos(
    json['thumb'] as String,
    json['image'] as String,
    json['cover'] as String,
    json['alt'] as String,
    json['id'] as String,
    json['icon'] as String,
  );
}

Map<String, dynamic> _$PhotosToJson(Photos instance) => <String, dynamic>{
      'thumb': instance.thumb,
      'image': instance.image,
      'cover': instance.cover,
      'alt': instance.alt,
      'id': instance.id,
      'icon': instance.icon,
    };

Clips _$ClipsFromJson(Map<String, dynamic> json) {
  return Clips(
    json['medium'] as String,
    json['title'] as String,
    json['subject_id'] as String,
    json['alt'] as String,
    json['small'] as String,
    json['resource_url'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$ClipsToJson(Clips instance) => <String, dynamic>{
      'medium': instance.medium,
      'title': instance.title,
      'subject_id': instance.subjectId,
      'alt': instance.alt,
      'small': instance.small,
      'resource_url': instance.resourceUrl,
      'id': instance.id,
    };

Directors _$DirectorsFromJson(Map<String, dynamic> json) {
  return Directors(
    json['avatars'] == null
        ? null
        : Avatars.fromJson(json['avatars'] as Map<String, dynamic>),
    json['name_en'] as String,
    json['name'] as String,
    json['alt'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$DirectorsToJson(Directors instance) => <String, dynamic>{
      'avatars': instance.avatars,
      'name_en': instance.nameEn,
      'name': instance.name,
      'alt': instance.alt,
      'id': instance.id,
    };

Popular_reviews _$Popular_reviewsFromJson(Map<String, dynamic> json) {
  return Popular_reviews(
    json['rating'] == null
        ? null
        : Rating.fromJson(json['rating'] as Map<String, dynamic>),
    json['title'] as String,
    json['subject_id'] as String,
    json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>),
    json['summary'] as String,
    json['alt'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$Popular_reviewsToJson(Popular_reviews instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'title': instance.title,
      'subject_id': instance.subjectId,
      'author': instance.author,
      'summary': instance.summary,
      'alt': instance.alt,
      'id': instance.id,
    };
