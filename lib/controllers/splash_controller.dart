import 'dart:async';
import 'package:get/get.dart';
import 'package:getx_email_pass_firebaseauth/controllers/auth_controller.dart';

class SplashController extends GetxController {
  AuthController authController = Get.find<AuthController>();

  void checkAuth() {
    Timer(Duration(seconds: 1), () {
      if (authController.user != null) {
        Get.offAllNamed('/');
      } else {
        Get.offAllNamed('/login');
      }
    });
  }

  @override
  void onReady() {
    checkAuth();
    super.onReady();
  }
}
