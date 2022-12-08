import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/logged_out_screen/models/logged_out_model.dart';

class LoggedOutController extends GetxController {
  Rx<LoggedOutModel> loggedOutModelObj = LoggedOutModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
