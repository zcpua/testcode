import '../controller/chats_mockup_controller.dart';
import '../models/chats_mockup_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';

// ignore: must_be_immutable
class ChatsMockupItemWidget extends StatelessWidget {
  ChatsMockupItemWidget(this.chatsMockupItemModelObj);

  ChatsMockupItemModel chatsMockupItemModelObj;

  var controller = Get.find<ChatsMockupController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 16.25,
          right: 60,
          bottom: 16.25,
        ),
        child: Row(
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
                imagePath: ImageConstant.imgEllipse64x64,
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
                      "lbl_will_kenny".tr,
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
                        top: 7,
                      ),
                      child: Text(
                        "msg_i_know_i_m_trying".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular13.copyWith(
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
    );
  }
}
