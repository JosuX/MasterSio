import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Users extends GetxController {
  Rx<User?> currentUser = FirebaseAuth.instance.currentUser.obs;

  @override
  void onInit() {
    super.onInit();
    currentUser.bindStream(FirebaseAuth.instance.userChanges());
  }
}
