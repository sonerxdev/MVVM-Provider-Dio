

import 'package:flutter/material.dart';
import 'package:mvvm_provider/app/unsplash.com/Model/UnsplashModel.dart';
import 'package:mvvm_provider/app/unsplash.com/Service/UnsplashService.dart';
import 'package:mvvm_provider/app/unsplash.com/Unsplash.dart';
import 'package:mvvm_provider/core/base/base_model.dart';
import 'package:mvvm_provider/core/base/base_view_model.dart';
import 'package:provider/provider.dart';

abstract class UnsplashViewModel extends State<Unsplash> with ChangeNotifier{

   List<UnsplashModel> model2 = [];

  Future getAllPhotos() async {
    model2 = await context.read<UnsplashService>().getPhotos();
  }
}