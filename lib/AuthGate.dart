// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mastersio/controllers/users_controller.dart';
import 'package:mastersio/main.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:mastersio/screens/home.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetX<Users>(
            builder: (controller) => controller.currentUser.value == null
                ? SignInScreen(
                    providerConfigs: [EmailProviderConfiguration()],
                  )
                : Home()));
  }
}
