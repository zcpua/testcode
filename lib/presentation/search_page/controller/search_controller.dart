import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/search_page/models/search_model.dart';
import 'package:flutter/material.dart';

class SearchController extends GetxController {
  SearchController(this.searchModelObj);

  TextEditingController componentController = TextEditingController();

  Rx<SearchModel> searchModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    componentController.dispose();
  }
}
