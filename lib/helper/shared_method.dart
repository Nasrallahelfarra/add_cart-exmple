
import 'package:flutter/material.dart';

import 'package:get/get.dart';


snackSuccess(String title, String body) {
  Future.delayed(Duration(seconds: 0)).then((value) {
    Get.snackbar("$title", "$body",
        colorText: Colors.white,
        margin: EdgeInsets.all(8),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Color(0xFF10C995).withAlpha(150));
  });
}

snackError(String title, String body) {
  Future.delayed(Duration(seconds: 0)).then((value) {
    Get.snackbar("$title", "$body",
        colorText: Colors.white,
        margin: EdgeInsets.all(8),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Color(0xFFF2AE56).withAlpha(150));
  });
}

