import 'package:flutter/material.dart';
import 'package:mvvm_provider/app/reqres.in/Service/reqresinService.dart';
import 'package:mvvm_provider/app/reqres.in/ViewModel/reqresinViewModel.dart';
import 'package:provider/provider.dart';

class ReqresinView extends ReqresinViewModel {
  String? name;
  String? job;

  @override
  void initState() {
    super.initState();
   
  }

  TextEditingController _nameTextEditingController =
      new TextEditingController();
  TextEditingController _jobTextEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final reqresinService = Provider.of<ReqresinService>(context);

    post() async {
      name = _nameTextEditingController.text;
      job = _jobTextEditingController.text;
      reqresinService.postFunction(name, job);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Create User"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await post();
        },
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameTextEditingController,
          ),
          TextField(
            controller: _jobTextEditingController,
          ),
          // Expanded(
          //   child: ListView.builder(
          //       itemCount: reqresinService.model1.length,
          //       itemBuilder: (context, index) {
          //         return reqresinService.model1.isEmpty
          //             ? CircularProgressIndicator()
          //             : Text("${reqresinService.model1[index].name}");
          //       }),
          // )
        ],
      ),
    );
  }
}
