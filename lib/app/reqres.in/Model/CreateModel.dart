
import 'package:json_annotation/json_annotation.dart';
part 'CreateModel.g.dart';

@JsonSerializable()
class CreateModel  {
  String? name;
  String? job;
  String? id;
  String? createdAt;

  CreateModel({this.name, this.job, this.id, this.createdAt});

   factory CreateModel.fromJson(Map<String, dynamic> json) {
    return _$CreateModelFromJson(json);
  }

  Map<String, Object?> toJson() {
    return _$CreateModelToJson(this);
  }



 
}
