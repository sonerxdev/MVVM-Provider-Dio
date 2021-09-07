// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PhotoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return PhotoModel(
    id: json['id'] as String?,
    author: json['author'] as String?,
    width: json['width'] as int?,
    height: json['height'] as int?,
    url: json['url'] as String?,
    downloadUrl: json['downloadUrl'] as String?,
  );
}

Map<String, dynamic> _$PhotoModelToJson(PhotoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'downloadUrl': instance.downloadUrl,
    };
