import '../controller/search_controller.dart';
import '../models/search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.searchItemModelObj);

  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 5.5,
          bottom: 5.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CommonImageView(
              imagePath: ImageConstant.imgRectangle2107x107,
              height: getSize(
                107.00,
              ),
              width: getSize(
                107.00,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 11,
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgRectangle21107x107,
                height: getSize(
                  107.00,
                ),
                width: getSize(
                  107.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 11,
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgRectangle22107x107,
                height: getSize(
                  107.00,
                ),
                width: getSize(
                  107.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
