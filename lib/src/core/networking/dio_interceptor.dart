import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // on request, run some code
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // on response, run some code
    super.onResponse(response, handler);
  }
}
