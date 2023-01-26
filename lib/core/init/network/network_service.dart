import 'dart:io';

import 'package:coretemplate/core/base/model/base_error.dart';
import 'package:coretemplate/core/base/model/base_model.dart';
import 'package:dio/dio.dart';

//todo view model base sıfında datalar hazırlanacak;

class NetworksService {
  static NetworksService? _instance;
  static NetworksService get instance => _instance ??= NetworksService._init();
  Dio? _dio;
  NetworksService._init() {
    final baseOptions =
        BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/');
    _dio = Dio(baseOptions);

    _dio!.interceptors.add(InterceptorsWrapper(
      onError: (e, handler) {
        BaseError();
      },
      onRequest: (options, handler) {},
      onResponse: (e, handler) {},
    ));
  }

  dioGet<T extends BaseModel>(String path, T model) async {
    final response = await _dio!.get(path);

    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = response.data;
        if (responseBody is List) {
          return responseBody.map((e) => model.fromJson(e)).toList();
        } else if (responseBody is Map) {
          return model.fromJson(responseBody);
        }
        return responseBody;
      default:
    }
  }
}
