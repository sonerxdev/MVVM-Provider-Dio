import 'package:dio/dio.dart';

class NetworkService {
  static NetworkService? _instace;
  static NetworkService get instance {
    if (_instace != null) return _instace!;
    _instace = NetworkService._init();
    return _instace!;
  }

  final String _baseUrl1 = 'https://picsum.photos/';
  final String _baseUrl2 = 'https://api.unsplash.com/';
  final String _baseUrl3 = "https://reqres.in";
  late final Dio dio;

  NetworkService._init() {
    dio = Dio(BaseOptions(baseUrl: _baseUrl2));
  }
}
