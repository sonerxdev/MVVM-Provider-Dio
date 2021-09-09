import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:mvvm_provider/app/Photo/Model/Photo.dart';
import 'package:mvvm_provider/app/Photo/Model/PhotoModel.dart';
import 'package:mvvm_provider/app/Photo/Service/PhotoService.dart';

abstract class PhotoViewModel extends State<Photo> {
  List<PhotoModel> model2 = [];

  Future<void> getAllData() async {
    model2 = await context.read<PhotoService>().getAllData();
  }
}
