import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pasbhishma/pages/login_page.dart';
import 'package:pasbhishma/pages/mainmenu_page.dart';
import 'package:pasbhishma/pages/detailmakanan_page.dart';
import 'package:pasbhishma/pages/transaksi_page.dart';

class Routes {
  static const String login = "/login";
  static const String mainMenu = "/mainmenu";
  static const String detailmakanan = "/detailmakanan";
  static const String transaksi = "/transaksi";

  static final myPages = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: mainMenu, page: () => const MainMenuPage()),
    GetPage(name: detailmakanan, page: () => DetailMakananPage()),
    GetPage(name: transaksi, page: () => TransaksiPage()),
  ];
}
