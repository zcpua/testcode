import 'package:xswl_s_application/presentation/profile_screen/profile_screen.dart';
import 'package:xswl_s_application/presentation/profile_screen/binding/profile_binding.dart';
import 'package:xswl_s_application/presentation/logged_out_screen/logged_out_screen.dart';
import 'package:xswl_s_application/presentation/logged_out_screen/binding/logged_out_binding.dart';
import 'package:xswl_s_application/presentation/discover_one_screen/discover_one_screen.dart';
import 'package:xswl_s_application/presentation/discover_one_screen/binding/discover_one_binding.dart';
import 'package:xswl_s_application/presentation/register_screen/register_screen.dart';
import 'package:xswl_s_application/presentation/register_screen/binding/register_binding.dart';
import 'package:xswl_s_application/presentation/discover_screen/discover_screen.dart';
import 'package:xswl_s_application/presentation/discover_screen/binding/discover_binding.dart';
import 'package:xswl_s_application/presentation/search_container_screen/search_container_screen.dart';
import 'package:xswl_s_application/presentation/search_container_screen/binding/search_container_binding.dart';
import 'package:xswl_s_application/presentation/individual_chat_screen/individual_chat_screen.dart';
import 'package:xswl_s_application/presentation/individual_chat_screen/binding/individual_chat_binding.dart';
import 'package:xswl_s_application/presentation/chats_screen/chats_screen.dart';
import 'package:xswl_s_application/presentation/chats_screen/binding/chats_binding.dart';
import 'package:xswl_s_application/presentation/chats_mockup_screen/chats_mockup_screen.dart';
import 'package:xswl_s_application/presentation/chats_mockup_screen/binding/chats_mockup_binding.dart';
import 'package:xswl_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:xswl_s_application/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String profileScreen = '/profile_screen';

  static String loggedOutScreen = '/logged_out_screen';

  static String discoverOneScreen = '/discover_one_screen';

  static String registerScreen = '/register_screen';

  static String discoverScreen = '/discover_screen';

  static String searchContainerScreen = '/search_container_screen';

  static String individualChatScreen = '/individual_chat_screen';

  static String chatsScreen = '/chats_screen';

  static String chatsMockupScreen = '/chats_mockup_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: loggedOutScreen,
      page: () => LoggedOutScreen(),
      bindings: [
        LoggedOutBinding(),
      ],
    ),
    GetPage(
      name: discoverOneScreen,
      page: () => DiscoverOneScreen(),
      bindings: [
        DiscoverOneBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: discoverScreen,
      page: () => DiscoverScreen(),
      bindings: [
        DiscoverBinding(),
      ],
    ),
    GetPage(
      name: searchContainerScreen,
      page: () => SearchContainerScreen(),
      bindings: [
        SearchContainerBinding(),
      ],
    ),
    GetPage(
      name: individualChatScreen,
      page: () => IndividualChatScreen(),
      bindings: [
        IndividualChatBinding(),
      ],
    ),
    GetPage(
      name: chatsScreen,
      page: () => ChatsScreen(),
      bindings: [
        ChatsBinding(),
      ],
    ),
    GetPage(
      name: chatsMockupScreen,
      page: () => ChatsMockupScreen(),
      bindings: [
        ChatsMockupBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    )
  ];
}
