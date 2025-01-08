import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

enum Http { post, get, put, delete }

class ApiClient {

  static final pod = Provider<ApiClient>((ref) => ApiClient._(ref));

  ApiClient._(this.ref) {
    _init();
  }
  final Ref ref;

  static Dio dio = Dio();

  Future<void> _init() async {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters.addAll({
          'appid': 'ApiKey',
        });
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        return handler.next(e);
      },
    ));
  }

}