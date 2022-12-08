import '../controller/discover_controller.dart';
import '../models/discover_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';

// ignore: must_be_immutable
class DiscoverItemWidget extends StatelessWidget {
  DiscoverItemWidget(this.discoverItemModelObj);

  DiscoverItemModel discoverItemModelObj;

  var controller = Get.find<DiscoverController>();

  @override
  Widget build(BuildContext context) {
    return CommonImageView(
      imagePath: ImageConstant.imgRectangle2220x167,
      height: getVerticalSize(
        220.00,
      ),
      width: getHorizontalSize(
        167.00,
      ),
    );
  }
}
