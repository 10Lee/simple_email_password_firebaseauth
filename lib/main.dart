import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_email_pass_firebaseauth/controllers/binding/auth_binding.dart';
import 'package:getx_email_pass_firebaseauth/screens/signup.dart';
import 'controllers/binding/splash_binding.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      getPages: [
        GetPage(
          name: '/',
          page: () => Home(),
          binding: AuthBinding(),
        ),
        GetPage(
          name: '/login',
          page: () => Login(),
          binding: AuthBinding(),
        ),
        GetPage(
          name: '/signup',
          page: () => Signup(),
        ),
        GetPage(
          name: '/splash',
          page: () => Splash(),
          bindings: [
            SplashBinding(),
            AuthBinding(),
          ],
        ),
      ],
      initialRoute: '/splash',
    );
  }
}
