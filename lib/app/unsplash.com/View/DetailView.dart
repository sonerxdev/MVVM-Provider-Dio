import 'package:flutter/material.dart';
import 'package:mvvm_provider/app/unsplash.com/Model/UnsplashModel.dart';

class DetailPage extends StatefulWidget {
  final List<Results>? results;

  const DetailPage({Key? key, required this.results}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //  leading: CircleAvatar(backgroundImage: Ima,),
        actions: [Text("datasdasdaa")],
        title: Text("Detail Page"),
      ),
      body: ListView.builder(
          itemCount: widget.results?.length,
          itemBuilder: (context, index) {
            return Text("");
          }),
    );
  }
}
