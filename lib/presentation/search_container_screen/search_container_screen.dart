import 'controller/search_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/search_page/search_page.dart';
import 'package:xswl_s_application/widgets/custom_bottom_bar.dart';

class SearchContainerScreen extends GetWidget<SearchContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Obx(() => getCurrentWidget(controller.type.value)),
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
}
