import 'controller/discover_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/search_page/search_page.dart';
import 'package:xswl_s_application/widgets/custom_bottom_bar.dart';

class DiscoverOneScreen extends GetWidget<DiscoverOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Padding(
            padding: getPadding(
              left: 16,
              top: 29,
              right: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "lbl_discover".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtComfortaaRegular36,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 32,
                    right: 10,
                  ),
                  child: Text(
                    "msg_what_s_new_today".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoBlack13.copyWith(
                      letterSpacing: 0.52,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 23,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgRectangle28,
                    height: getSize(
                      343.00,
                    ),
                    width: getSize(
                      343.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 15,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 1,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              14.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgEllipse1,
                            height: getSize(
                              28.00,
                            ),
                            width: getSize(
                              28.00,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_ridhwan_nordin".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold13,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 1,
                                right: 10,
                              ),
                              child: Text(
                                "lbl_ridzjcob".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 46,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_browse_all".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoBlack13.copyWith(
                      letterSpacing: 0.52,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 23,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 90,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgRectangle2220x167,
                          height: getVerticalSize(
                            220.00,
                          ),
                          width: getHorizontalSize(
                            167.00,
                          ),
                        ),
                      ),
                      CommonImageView(
                        imagePath: ImageConstant.imgRectangle21310x167,
                        height: getVerticalSize(
                          310.00,
                        ),
                        width: getHorizontalSize(
                          167.00,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Search:
        return getDefaultWidget();
      case BottomBarEnum.Grid:
        return SearchPage();
      case BottomBarEnum.Lightbulb:
        return getDefaultWidget();
      case BottomBarEnum.User:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
