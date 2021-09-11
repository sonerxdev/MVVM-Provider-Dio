import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mvvm_provider/app/unsplash.com/Model/UnsplashModel.dart';
import 'package:mvvm_provider/core/base/base_view_model.dart';
import 'package:mvvm_provider/core/network/NetworkService.dart';

class UnsplashService extends BaseViewModel {
  final Dio dio = NetworkService.instance.dio;

  List<UnsplashModel> _models = [];

  List<UnsplashModel> get model1 => _models;

  Future getPhotos() async {
    final response = await dio.get(ServicePath.PATH.rawValue +
        APIKEY.API_KEY.rawValue +
        CategoryPath.CATEGORY.rawValue);

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is Map<String, dynamic>) {
        final unsplashModel = UnsplashModel.fromJson(data);
        _models = unsplashModel.results!
            .map((i) => UnsplashModel.fromJson(data))
            .toList();
        print("map türünde");
        notifyListeners();
      } else if (data is List) {
        _models = data.map((e) => UnsplashModel.fromJson(e)).toList();
        print("liste türünde");
        notifyListeners();
        print(_models.length);
      }
    }
    notifyListeners();
  }
}

enum ServicePath { PATH }

enum APIKEY { API_KEY }

enum CategoryPath { CATEGORY }

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.PATH:
        return 'search/photos?per_page=30&client_id=';
    }
  }
}

extension ApiKeyExtension on APIKEY {
  String get rawValue {
    switch (this) {
      case APIKEY.API_KEY:
        return 'b5ZuTtxteyWxyyuI72kRLjA4hUu541rgb-B2u6W1XpA';
    }
  }
}

extension CategoryExtension on CategoryPath {
  String get rawValue {
    switch (this) {
      case CategoryPath.CATEGORY:
        return '&query=nature%27';
    }
  }
}
