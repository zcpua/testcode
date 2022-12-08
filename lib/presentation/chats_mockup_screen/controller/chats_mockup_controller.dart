import 'package:xswl_s_application/core/app_export.dart';
import 'package:xswl_s_application/presentation/chats_mockup_screen/models/chats_mockup_model.dart';

class ChatsMockupController extends GetxController {
  Rx<ChatsMockupModel> chatsMockupModelObj = ChatsMockupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
