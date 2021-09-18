// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CreateModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateModel _$CreateModelFromJson(Map<String, dynamic> json) {
  return CreateModel(
    name: json['name'] as String?,
    job: json['job'] as String?,
    id: json['id'] as String?,
    createdAt: json['createdAt'] as String?,
  );
}

Map<String, dynamic> _$CreateModelToJson(CreateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'job': instance.job,
      'id': instance.id,
      'createdAt': instance.createdAt,
    };
