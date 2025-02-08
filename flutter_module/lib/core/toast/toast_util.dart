/**
 * @author: jiangjunhui
 * @date: 2025/2/8
 */
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ToastUtil {
  static void showToast(
      {required String msg, int duration = 2000, bool dismissOnTap = false}) {
    EasyLoading.showToast(msg,
        duration: Duration(milliseconds: duration),
        toastPosition: EasyLoadingToastPosition.center,
        dismissOnTap: dismissOnTap);
  }

  static void showLoading({required String msg, bool dismissOnTap = false}) {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..loadingStyle = EasyLoadingStyle.dark
      ..radius = 5.0
      ..maskColor = Colors.white.withOpacity(0.1);

    EasyLoading.show(
        status: msg,
        maskType: EasyLoadingMaskType.custom,
        dismissOnTap: dismissOnTap);
  }

  static void dismiss() {
    EasyLoading.dismiss(animation: true);
  }
}
