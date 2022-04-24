import 'package:get/get.dart';
import 'package:getx_email_pass_firebaseauth/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
