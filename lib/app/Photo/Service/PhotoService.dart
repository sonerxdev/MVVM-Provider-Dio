import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:mvvm_provider/app/Photo/Model/PhotoModel.dart';
import 'package:mvvm_provider/core/base/base_view_model.dart';
import 'package:mvvm_provider/core/network/NetworkService.dart';

class PhotoService extends BaseViewModel {

  final Dio dio = NetworkService.instance.dio;

  List<PhotoModel> _models = [];

  List<PhotoModel> get model1 => _models;

  Future getAllData() async {
    final response = await dio.get(ServicePath.EPISODE.rawValue);

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is Map<String, dynamic>) {
        final photoModel = PhotoModel().fromJson(data);
        _models = photoModel as List<PhotoModel>;
        return print("map türünde");
      } else if (data is List) {
        _models = data.map((e) => PhotoModel().fromJson(e)).toList();
        print("liste türünde");
        notifyListeners();
        print(_models.length);
      }
    }

    notifyListeners();
  }
}

enum ServicePath { EPISODE }

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.EPISODE:
        return '/v2/list';
    }
  }
}
