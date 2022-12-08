import 'controller/chats_controller.dart';
import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/widgets/custom_button.dart';

class ChatsScreen extends GetWidget<ChatsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  width: 375,
                  text: "lbl_chats".tr,
                  margin: getMargin(
                    bottom: 5,
                  ),
                  variant: ButtonVariant.OutlineBlack9004c,
                  shape: ButtonShape.Square,
                  padding: ButtonPadding.PaddingAll11,
                  fontStyle: ButtonFontStyle.SFProTextSemibold17,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
