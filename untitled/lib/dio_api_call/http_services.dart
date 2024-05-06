import 'package:dio/dio.dart';

class HttpService {
  final Dio _dio;
  static String baseUrl = "https://reqres.in/";


  HttpService()
      : _dio = Dio(BaseOptions(
          baseUrl: baseUrl,
      connectTimeout: const Duration(minutes: 1)
        )) {
    initializeInterceptor();
  }

  //crete get request
  Future<Response> getRequest(String endpoint) async {
    Response response;

    try {
      response = await _dio.get(endpoint);
    } on DioException catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  initializeInterceptor() {
    /*_dio.interceptors.add(InterceptorsWrapper(onRequest: (req, handler) {
      print("DIO__ ${req.method}Url = ${req.baseUrl}");
    }, onError: (error, handler) {
      print("DIO__ ${error.message}");
    }, onResponse: (res, handler) {
      print("DIO__ " + res.data);
    }));*/
    _dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }
}
