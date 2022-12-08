import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/discover_one_screen/models/discover_one_model.dart';
import 'package:xswl_s_application/widgets/custom_bottom_bar.dart';

class DiscoverOneController extends GetxController {
  Rx<DiscoverOneModel> discoverOneModelObj = DiscoverOneModel().obs;

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
