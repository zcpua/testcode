import '../controller/logged_out_controller.dart';
import 'package:get/get.dart';

class LoggedOutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoggedOutController());
  }
}
