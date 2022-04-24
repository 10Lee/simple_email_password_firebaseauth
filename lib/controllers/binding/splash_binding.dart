import 'package:get/instance_manager.dart';
import 'package:getx_email_pass_firebaseauth/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
