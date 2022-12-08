import '../search_page/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchController controller = Get.put(SearchController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 15,
                      top: 29,
                      right: 16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 1,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_search".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtComfortaaRegular36,
                          ),
                        ),
                        CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.componentController,
                          hintText: "lbl_dogs".tr,
                          margin: getMargin(
                            left: 1,
                            top: 33,
                          ),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 31,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_all_results".tr.toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoBlack13.copyWith(
                              letterSpacing: 0.52,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 1,
                              top: 23,
                            ),
                            child: Obx(
                              () => ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller
                                    .searchModelObj.value.searchItemList.length,
                                itemBuilder: (context, index) {
                                  SearchItemModel model = controller
                                      .searchModelObj
                                      .value
                                      .searchItemList[index];
                                  return SearchItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
