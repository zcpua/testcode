import '../controller/search_container_controller.dart';
import 'package:get/get.dart';

class SearchContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchContainerController());
  }
}
