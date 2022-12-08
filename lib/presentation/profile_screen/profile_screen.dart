import '../profile_screen/widgets/profile_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/search_page/search_page.dart';
import 'package:xswl_s_application/widgets/custom_bottom_bar.dart';
import 'package:xswl_s_application/widgets/custom_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Padding(
            padding: getPadding(
              left: 16,
              top: 32,
              right: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 105,
                      right: 105,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          64.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgEllipse,
                        height: getSize(
                          128.00,
                        ),
                        width: getSize(
                          128.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 105,
                      top: 29,
                      right: 105,
                    ),
                    child: Text(
                      "lbl_jane".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtComfortaaRegular36,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 105,
                      top: 17,
                      right: 105,
                    ),
                    child: Text(
                      "msg_san_francisco_ca".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBlack13.copyWith(
                        letterSpacing: 0.52,
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  width: 343,
                  text: "lbl_follow_jane".tr.toUpperCase(),
                  margin: getMargin(
                    top: 30,
                  ),
                  variant: ButtonVariant.OutlineBlack900,
                  fontStyle: ButtonFontStyle.RobotoBlack13,
                ),
                CustomButton(
                  width: 343,
                  text: "lbl_message".tr.toUpperCase(),
                  margin: getMargin(
                    top: 16,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    859.00,
                  ),
                  width: getHorizontalSize(
                    343.00,
                  ),
                  margin: getMargin(
                    top: 32,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: getPadding(
                            right: 10,
                            bottom: 10,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgRectangle2,
                            height: getVerticalSize(
                              220.00,
                            ),
                            width: getHorizontalSize(
                              167.00,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: getVerticalSize(
                            859.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: getPadding(
                                    left: 10,
                                    bottom: 10,
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imgRectangle21,
                                    height: getVerticalSize(
                                      310.00,
                                    ),
                                    width: getHorizontalSize(
                                      167.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Obx(
                                  () => StaggeredGridView.countBuilder(
                                    shrinkWrap: true,
                                    primary: false,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: getHorizontalSize(
                                      9.00,
                                    ),
                                    mainAxisSpacing: getHorizontalSize(
                                      9.00,
                                    ),
                                    staggeredTileBuilder: (index) {
                                      return StaggeredTile.fit(2);
                                    },
                                    itemCount: controller.profileModelObj.value
                                        .profileItemList.length,
                                    itemBuilder: (context, index) {
                                      ProfileItemModel model = controller
                                          .profileModelObj
                                          .value
                                          .profileItemList[index];
                                      return ProfileItemWidget(
                                        model,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  width: 343,
                  text: "lbl_see_more".tr.toUpperCase(),
                  margin: getMargin(
                    top: 32,
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
