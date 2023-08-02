import 'package:get/get.dart';

import '../controllers/new_wallet_controller.dart';

class NewWalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewWalletController>(
      () => NewWalletController(),
    );
  }
}
