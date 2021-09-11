import 'package:mvvm_provider/app/picsum.com/Photo.dart';
import 'package:mvvm_provider/app/picsum.com/Model/PhotoModel.dart';
import 'package:mvvm_provider/app/picsum.com/Service/PhotoService.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

abstract class PhotoViewModel extends State<Photo> {
  List<PhotoModel> model2 = [];

  Future getAllData() async {
    model2 = await context.read<PhotoService>().getAllData();
  }
}
