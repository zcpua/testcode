import '../chats_mockup_screen/widgets/chats_mockup_item_widget.dart';
import 'controller/chats_mockup_controller.dart';
import 'models/chats_mockup_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/widgets/custom_button.dart';

class ChatsMockupScreen extends GetWidget<ChatsMockupController> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButton(
                      width: 375,
                      text: "lbl_chats".tr,
                      variant: ButtonVariant.OutlineBlack9004c,
                      shape: ButtonShape.Square,
                      padding: ButtonPadding.PaddingAll11,
                      fontStyle: ButtonFontStyle.SFProTextSemibold17,
                      alignment: Alignment.centerLeft,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 16,
                          top: 16,
                          right: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  32.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgEllipse2,
                                height: getSize(
                                  64.00,
                                ),
                                width: getSize(
                                  64.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 1,
                                bottom: 22,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      right: 10,
                                    ),
                                    child: Text(
                                      "lbl_james".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold13.copyWith(
                                        height: 1.23,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "msg_thank_you_that".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular13
                                            .copyWith(
                                          height: 1.23,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: getVerticalSize(
                    1.00,
                  ),
                  width: size.width,
                  margin: getMargin(
                    top: 16,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.black9004c,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 16,
                      right: 16,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Container(
                            height: getVerticalSize(
                              0.50,
                            ),
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorConstant.black9004c,
                            ),
                          );
                        },
                        itemCount: controller.chatsMockupModelObj.value
                            .chatsMockupItemList.length,
                        itemBuilder: (context, index) {
                          ChatsMockupItemModel model = controller
                              .chatsMockupModelObj
                              .value
                              .chatsMockupItemList[index];
                          return ChatsMockupItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    1.00,
                  ),
                  width: size.width,
                  margin: getMargin(
                    top: 16,
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.black9004c,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
