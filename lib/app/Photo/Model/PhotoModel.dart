import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_provider/core/base/base_model.dart';

part 'PhotoModel.g.dart';

@JsonSerializable()
class PhotoModel extends BaseModel<PhotoModel> {
  String? id;
  String? author;
  int? width;
  int? height;
  String? url;
  String? downloadUrl;

  PhotoModel(
      {this.id,
      this.author,
      this.width,
      this.height,
      this.url,
      this.downloadUrl});

  // factory PhotoModel.fromJson(Map<String, dynamic> json) {
  //   return _$PhotoModelFromJson(json);
  // }

  Map<String, dynamic> toJson() {
    return _$PhotoModelToJson(this);
  }

  @override
  PhotoModel fromJson(Map<String, dynamic> json) {
    return _$PhotoModelFromJson(json);
  }
}
