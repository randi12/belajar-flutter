import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skripsi_baru/app/routes/app_pages.dart';

class NewPasswordController extends GetxController {
  TextEditingController newPassC = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  void newPassword() async {
    if (newPassC.text.isNotEmpty) {
      if (newPassC.text != "password") {
        await auth.currentUser!.updatePassword(newPassC.text);
        String email = auth.currentUser!.email!;

        await auth.signOut();

        await auth.signInWithEmailAndPassword(
            email: email, password: newPassC.text);

        Get.offAllNamed(Routes.HOME);
      } else {
        Get.snackbar("Terjadi kesalahan", "Password Baru Harus Diubah");
      }
    } else {
      Get.snackbar("Terjadi kesalahan", "Password Baru Wajib Diisi");
    }
  }
}
