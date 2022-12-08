import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  TextEditingController componentController = TextEditingController();

  TextEditingController componentOneController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    componentController.dispose();
    componentOneController.dispose();
  }
}
