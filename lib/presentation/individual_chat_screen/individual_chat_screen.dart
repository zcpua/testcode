import 'controller/individual_chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/search_page/search_page.dart';
import 'package:xswl_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:xswl_s_application/widgets/custom_bottom_bar.dart';
import 'package:xswl_s_application/widgets/custom_text_form_field.dart';

class IndividualChatScreen extends GetWidget<IndividualChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                centerTitle: true,
                title: Container(
                    decoration: AppDecoration.outlineBlack9004c,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                              padding: getPadding(left: 9, top: 12, bottom: 11),
                              child: InkWell(
                                  onTap: () {
                                    onTapImgArrowleft();
                                  },
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgArrowleft,
                                      height: getVerticalSize(21.00),
                                      width: getHorizontalSize(12.00)))),
                          Padding(
                              padding: getPadding(
                                  left: 140, top: 11, right: 161, bottom: 11),
                              child: Text("lbl_james".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProTextSemibold17
                                      .copyWith(height: 1.24)))
                        ])),
                styleType: Style.bgShadowBlack9004c),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 32, right: 16),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 54),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(14.00)),
                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse2,
                                                height: getSize(28.00),
                                                width: getSize(28.00),
                                                fit: BoxFit.cover))),
                                    Container(
                                        decoration: AppDecoration.fillBlack90007
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderBL6),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width:
                                                      getHorizontalSize(256.00),
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 19,
                                                      right: 16,
                                                      bottom: 16),
                                                  child: Text(
                                                      "msg_really_love_your".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular13
                                                          .copyWith(
                                                              height: 1.38)))
                                            ]))
                                  ]),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            decoration: AppDecoration
                                                .fillBlack90007
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL6),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          261.00),
                                                      margin: getMargin(
                                                          left: 16,
                                                          top: 19,
                                                          right: 16,
                                                          bottom: 16),
                                                      child: Text(
                                                          "msg_a_fast_50mm_like"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium13
                                                              .copyWith(
                                                                  height:
                                                                      1.38)))
                                                ])),
                                        Padding(
                                            padding: getPadding(bottom: 56),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            14.00)),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse,
                                                    height: getSize(28.00),
                                                    width: getSize(28.00),
                                                    fit: BoxFit.cover)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 2, bottom: 20),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            14.00)),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse2,
                                                    height: getSize(28.00),
                                                    width: getSize(28.00),
                                                    fit: BoxFit.cover))),
                                        CustomTextFormField(
                                            width: 299,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.groupFourController,
                                            hintText: "msg_thank_you_that".tr,
                                            variant: TextFormFieldVariant
                                                .FillBlack90007,
                                            fontStyle: TextFormFieldFontStyle
                                                .RobotoMediumItalic13,
                                            textInputAction:
                                                TextInputAction.done)
                                      ]))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

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

  onTapImgArrowleft() {
    Get.back();
  }
}
