import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skripsi_baru/app/modules/login/controllers/new_password_controller.dart';

class NewPasswordView extends GetView<NewPasswordController> {
  const NewPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NEW PASSWORD'),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              autocorrect: false,
              controller: controller.newPassC,
              decoration: InputDecoration(
                labelText: "NEW PASSWORD",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                controller.newPassword();
              },
              child: Text("Continue"),
            )
          ],
        ));
  }
}
