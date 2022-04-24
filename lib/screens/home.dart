import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_email_pass_firebaseauth/controllers/auth_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.find<AuthController>();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Email : ${controller.user.email}',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () => controller.logout(),
            child: Text('Logout'),
          )
        ],
      ),
    );
  }
}
