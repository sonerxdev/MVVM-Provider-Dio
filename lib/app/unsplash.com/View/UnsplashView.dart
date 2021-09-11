import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mvvm_provider/app/unsplash.com/Service/UnsplashService.dart';
import 'package:mvvm_provider/app/unsplash.com/ViewModel/UnsplashViewModel.dart';
import 'package:provider/provider.dart';

class UnsplashView extends UnsplashViewModel {
  @override
  void initState() {
    super.initState();
    getAllPhotos();
  }

  @override
  Widget build(BuildContext context) {
    final unsplashService = Provider.of<UnsplashService>(context);
    final String deneme = "deneme";

    return Scaffold(
      body: ListView.builder(
          itemCount: unsplashService.model1.length,
          itemBuilder: (context, index) {
            return unsplashService.model1.isEmpty
                ? CircularProgressIndicator()
                : Image.network(
                    "${unsplashService.model1[index].results?[index].urls?.regular ?? deneme}");
          }),
    );
  }
}
