import 'package:flutter/material.dart';
import 'package:mvvm_provider/app/Photo/Service/PhotoService.dart';
import 'package:provider/provider.dart';
import 'package:mvvm_provider/app/Photo/ViewModel/PhotoViewModel.dart';

class PhotoView extends PhotoViewModel {
  String deneme = "deneme";
  @override
  Widget build(BuildContext context) {
    final photoService = Provider.of<PhotoService>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          photoService.getAllData();
        },
      ),
      body: ListView.builder(
        itemCount: photoService.model1.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "${photoService.model1[index].downloadUrl ?? deneme}"),
            ),
            title: Text(
              "${photoService.model1[index].author ?? deneme}",
              style: TextStyle(color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
