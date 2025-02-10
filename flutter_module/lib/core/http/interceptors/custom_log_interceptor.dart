/**
 * @author: jiangjunhui
 * @date: 2025/1/22
 */
import 'package:dio/dio.dart';

class CustomLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // 记录请求日志
    _logRequest(options);
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // 记录响应日志
    _logResponse(response);
    handler.next(response);
  }

  @override
  void onError(DioError error, ErrorInterceptorHandler handler) {
    // 记录错误日志
    _logError(error);
    handler.next(error);
  }

  // 记录请求日志
  void _logRequest(RequestOptions options) {
    print('''

      请求方式: ${options.method}
      请求URL: ${options.uri}
      请求Headers: ${options.headers}
    ''');
  }

  // 记录响应日志
  void _logResponse(Response response) {
    print('''
 
      响应状态码: ${response.statusCode}
      响应: ${response.data}
    ''');
  }

  // 记录错误日志
  void _logError(DioError error) {
    print('''
    Error:
      Message: ${error.message}
      Response Status Code: ${error.response?.statusCode}
      Response Data: ${error.response?.data}
    ''');
  }
}
 
 
 
 
 
 
 
 
 
 