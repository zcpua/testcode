import '../controller/discover_one_controller.dart';
import 'package:get/get.dart';

class DiscoverOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscoverOneController());
  }
}
