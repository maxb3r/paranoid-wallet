import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/import_wallet/bindings/import_wallet_binding.dart';
import '../modules/import_wallet/views/import_wallet_view.dart';
import '../modules/new_wallet/bindings/new_wallet_binding.dart';
import '../modules/new_wallet/views/new_wallet_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.IMPORT_WALLET,
      page: () => const ImportWalletView(),
      binding: ImportWalletBinding(),
    ),
    GetPage(
      name: _Paths.NEW_WALLET,
      page: () => const NewWalletView(),
      binding: NewWalletBinding(),
    ),
  ];
}
