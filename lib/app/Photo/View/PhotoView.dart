import 'package:flutter/material.dart';
import 'package:mvvm_provider/app/Photo/ViewModel/PhotoViewModel.dart';

class PhotoView extends PhotoViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        getAllData();
      }),
      body: ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(models[index].downloadUrl ?? ''),
            ),
            title: Text(
              models[index].author ?? "sorun",
              style: TextStyle(color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
