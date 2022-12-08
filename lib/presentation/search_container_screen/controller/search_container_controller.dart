import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/search_container_screen/models/search_container_model.dart';
import 'package:xswl_s_application/widgets/custom_bottom_bar.dart';

class SearchContainerController extends GetxController {
  Rx<SearchContainerModel> searchContainerModelObj = SearchContainerModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
