import '../discover_screen/widgets/discover_item_widget.dart';
import 'controller/discover_controller.dart';
import 'models/discover_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/search_page/search_page.dart';
import 'package:xswl_s_application/widgets/custom_bottom_bar.dart';

class DiscoverScreen extends GetWidget<DiscoverController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Padding(
            padding: getPadding(
              left: 16,
              top: 7,
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
                  child: Obx(
                    () => StaggeredGridView.countBuilder(
                      shrinkWrap: true,
                      primary: false,
                      crossAxisCount: 4,
                      crossAxisSpacing: getHorizontalSize(
                        9.00,
                      ),
                      mainAxisSpacing: getHorizontalSize(
                        9.00,
                      ),
                      staggeredTileBuilder: (index) {
                        return StaggeredTile.fit(2);
                      },
                      itemCount: controller
                          .discoverModelObj.value.discoverItemList.length,
                      itemBuilder: (context, index) {
                        DiscoverItemModel model = controller
                            .discoverModelObj.value.discoverItemList[index];
                        return DiscoverItemWidget(
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
