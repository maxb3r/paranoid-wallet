import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:paranoid_wallet/color_schemes.g.dart';

import '../controllers/import_wallet_controller.dart';

class ImportWalletView extends GetView<ImportWalletController> {
  const ImportWalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Import Existing Wallet'),
        centerTitle: true,
        backgroundColor: darkColorScheme.background,
        titleTextStyle: TextStyle(color: darkColorScheme.onBackground, fontSize: 16),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: darkColorScheme.onBackground, // Change the color here.
          onPressed: () {
            // Add your back button functionality here.
            Get.back();
          },
        ),
      ),
      body: const Center(
        child: Text(
          'ImportWalletView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
