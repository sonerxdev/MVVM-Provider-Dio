// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UnsplashModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnsplashModel _$UnsplashModelFromJson(Map<String, dynamic> json) {
  return UnsplashModel(
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$UnsplashModelToJson(UnsplashModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return Results(
    id: json['id'] as String?,
    description: json['description'] as String?,
    altDescription: json['altDescription'] as String?,
    urls: json['urls'] == null
        ? null
        : Urls.fromJson(json['urls'] as Map<String, dynamic>),
    likes: json['likes'] as int?,
  )..results = (json['results'] as List<dynamic>?)
      ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
      .toList();
}

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'results': instance.results,
      'id': instance.id,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'urls': instance.urls,
      'likes': instance.likes,
    };

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return Urls(
    raw: json['raw'] as String?,
    full: json['full'] as String?,
    regular: json['regular'] as String?,
    small: json['small'] as String?,
    thumb: json['thumb'] as String?,
  )
    ..results = (json['results'] as List<dynamic>?)
        ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
        .toList()
    ..id = json['id'] as String?
    ..description = json['description'] as String?
    ..altDescription = json['altDescription'] as String?
    ..urls = json['urls'] == null
        ? null
        : Urls.fromJson(json['urls'] as Map<String, dynamic>)
    ..likes = json['likes'] as int?;
}

Map<String, dynamic> _$UrlsToJson(Urls instance) => <String, dynamic>{
      'results': instance.results,
      'id': instance.id,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'urls': instance.urls,
      'likes': instance.likes,
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
    };
