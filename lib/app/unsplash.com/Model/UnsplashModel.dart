import 'package:json_annotation/json_annotation.dart';

part 'UnsplashModel.g.dart';

@JsonSerializable() 
 class UnsplashModel{
  List<Results>? results;

  UnsplashModel({this.results});

  
  factory UnsplashModel.fromJson(Map<String, dynamic> json) {
    return _$UnsplashModelFromJson(json);
  }

  Map<String, Object?> toJson() {
    return _$UnsplashModelToJson(this);
  }
}

@JsonSerializable()
class Results extends UnsplashModel {
  String? id;
  String? description;
  String? altDescription;
  Urls? urls;
  int? likes;


  Results(
      {this.id,
      this.description,
      this.altDescription,
      this.urls,
      this.likes,
      });



  factory Results.fromJson(Map<String, dynamic> json) {
    return _$ResultsFromJson(json);
  }

  Map<String, Object?> toJson() {
    return _$ResultsToJson(this);
  }

   
}


@JsonSerializable()
class Urls extends Results {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;

  Urls({this.raw, this.full, this.regular, this.small, this.thumb});

 
  factory Urls.fromJson(Map<String, dynamic> json) {
    return _$UrlsFromJson(json);
  }

  Map<String, Object?> toJson() {
    return _$UrlsToJson(this);
  }


}
