import 'package:dio/dio.dart';

import 'utils.dart';

class HttpClient with DioMixin implements Dio {
  HttpClient(String baseUrl) {
    options = BaseOptions(baseUrl: baseUrl);
    httpClientAdapter = HttpClientAdapter();
    interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          // Do something before request is sent.
          // If you want to resolve the request with custom data,
          // you can resolve a `Response` using `handler.resolve(response)`.
          // If you want to reject the request with a error message,
          // you can reject with a `DioError` using `handler.reject(dioError)`.
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          // Do something with response data.
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object using `handler.reject(dioError)`.

          return handler.next(response);
        },
        onError: (DioError e, ErrorInterceptorHandler handler) {
          // Do something with response error.
          // If you want to resolve the request with some custom data,
          // you can resolve a `Response` object using `handler.resolve(response)`.

          // TODO: Implement exception handler

          return handler.next(e);
        },
      ),
    );
  }

  static Failure handler(dynamic error) {
    if (error is DioError) {
      if (error.response != null) {
        final message = error.response?.data.toString() ?? error.message;
        switch (error.response!.statusCode) {
          case 400:
            return Failure.badRequest(message);
          case 401:
            return Failure.unauthorized(message);
          case 404:
            return Failure.notFound(message);
          case 500:
            return Failure.internalServerError(message);
        }
      }
    }
    return Failure.error(error.message);
  }
}
