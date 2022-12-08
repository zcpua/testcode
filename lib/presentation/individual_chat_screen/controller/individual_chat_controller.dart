import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/individual_chat_screen/models/individual_chat_model.dart';
import 'package:xswl_s_application/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class IndividualChatController extends GetxController {
  TextEditingController groupFourController = TextEditingController();

  Rx<IndividualChatModel> individualChatModelObj = IndividualChatModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFourController.dispose();
  }
}
