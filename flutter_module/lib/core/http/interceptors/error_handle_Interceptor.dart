/**
 * @author: jiangjunhui
 * @date: 2025/1/22
 */
import 'package:dio/dio.dart';
/*
 * 特殊状态code处理的拦截器，
 * 401 弹出弹窗提示用户重新登录
 */
class ErrorHandleInterceptor extends Interceptor {
  @override
  void onError(DioError error, ErrorInterceptorHandler handler) {
    // 自定义错误处理逻辑
    _handleError(error);
    handler.next(error);
  }

  void _handleError(DioError error) {
    if (error.response != null) {
      // 服务器返回错误
      print('Error status code: ${error.response?.statusCode}');
      print('Error data: ${error.response?.data}');
    } else {
      // 网络错误等其他错误
      print('Error message: ${error.message}');
    }
  }
}
