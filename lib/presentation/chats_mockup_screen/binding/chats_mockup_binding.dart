import '../controller/chats_mockup_controller.dart';
import 'package:get/get.dart';

class ChatsMockupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatsMockupController());
  }
}
