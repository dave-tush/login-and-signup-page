
import 'package:flutter/material.dart';
import 'package:login_and_signup_page/login.dart';
import 'package:login_and_signup_page/signup.dart';
import 'reset_password.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/sign',
    routes: {
      '/': (context) => const Login(),
      '/sign':(context) => const Firsts(),
      '/reset':(context) => const ResetPassword(),
  }
  ));
}

