import 'package:flutter/material.dart';
import 'package:mvvm_provider/app/unsplash.com/Service/UnsplashService.dart';
import 'package:mvvm_provider/app/unsplash.com/View/DetailView.dart';
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
        body: RefreshIndicator(
      onRefresh: () => getAllPhotos(),
      child: ListView.builder(
        itemCount: unsplashService.model1.length,
        itemBuilder: (context, index) {
          return unsplashService.model1.isEmpty
              ? CircularProgressIndicator()
              : Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  ShaderMask(
                    blendMode: BlendMode.darken,
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                              colors: [Colors.black45, Colors.black45],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)
                          .createShader(bounds);
                    },
                    child: Image.network(
                        "${unsplashService.model1[index].results?[index].urls?.small ?? deneme}"),
                  ),
                  Center(
                    child: Text(
                      unsplashService
                              .model1[index].results?[index].description ??
                          deneme,
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              );
        },
      ),
    ));
  }
}
