import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/discover_screen/models/discover_model.dart';
import 'package:xswl_s_application/widgets/custom_bottom_bar.dart';

class DiscoverController extends GetxController {
  Rx<DiscoverModel> discoverModelObj = DiscoverModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
