import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../configs/app_colors/app_colors.dart';

class AppAlertUtil {
  static void showSuccess(BuildContext context, String message) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 18,
    );
  }

  static void showError(
    BuildContext context,
    String message, {
    Map<String, List<String>>? errors,
  }) {
    log("$message: $errors", name: 'Alert ERROR');
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 5,
      backgroundColor: AppColors.primaryRedColor,
      textColor: Colors.white,
      fontSize: 18,
    );
  }

  static void showWarning(BuildContext context, String message) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.orangeAccent,
      textColor: Colors.white,
      fontSize: 18,
    );
  }

  static void showInfo(BuildContext context, String message) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.lightBlue,
      textColor: Colors.white,
      fontSize: 18,
    );
  }
}
