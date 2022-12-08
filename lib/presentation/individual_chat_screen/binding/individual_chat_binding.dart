import '../controller/individual_chat_controller.dart';
import 'package:get/get.dart';

class IndividualChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IndividualChatController());
  }
}
