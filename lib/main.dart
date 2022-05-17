// ignore_for_file: empty_statements, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:mastersio/AuthGate.dart';
import 'package:mastersio/controllers/users_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(Users());
    return MaterialApp(home: AuthGate(), debugShowCheckedModeBanner: false);
  }
}
