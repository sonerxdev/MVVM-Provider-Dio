import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_provider/app/Photo/Model/Photo.dart';
import 'package:mvvm_provider/app/Photo/Model/PhotoModel.dart';
import 'package:mvvm_provider/core/network/NetworkService.dart';

abstract class PhotoViewModel extends State<Photo> {
  final Dio dio = NetworkService.instance.dio;

  List<PhotoModel> models = [];

  Future<void> getAllData() async {
    final response = await dio.get(ServicePath.EPISODE.rawValue);

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is Map<String, dynamic>) {
        final photoModel = PhotoModel().fromJson(data);
        models = photoModel as List<PhotoModel>;
        return print("map türünde");
      } else if (data is List) {
        models = data.map((e) => PhotoModel().fromJson(e)).toList();
        print("liste türünde");
      }
    }
    setState(() {});
    
    
  }
}

enum ServicePath { EPISODE }

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.EPISODE:
        return 'v2/list';
    }
  }
}
