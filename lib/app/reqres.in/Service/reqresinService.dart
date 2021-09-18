import 'package:dio/dio.dart';
import 'package:mvvm_provider/app/reqres.in/Model/CreateModel.dart';
import 'package:mvvm_provider/core/base/base_view_model.dart';
import 'package:mvvm_provider/core/network/NetworkService.dart';

class ReqresinService extends BaseViewModel {
  final Dio dio = NetworkService.instance.dio;

  CreateModel? _models;

  CreateModel? get model1 => _models;

  Future postFunction(String? name, String? job) async {
    final response = await dio.post("/api/users", data: {
      "name": name,
      "job": job,
    });

    if (response.statusCode == 201) {
      final data = response.data;
      print('Kullanici olusturuldu: ${response.data}');
      _models = CreateModel.fromJson(data);
    } else {
      print("Serviste Hata var.");
    }
    notifyListeners();
    return _models;
  }
}
