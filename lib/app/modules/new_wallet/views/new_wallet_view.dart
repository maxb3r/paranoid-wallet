import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_wallet_controller.dart';

class NewWalletView extends GetView<NewWalletController> {
  const NewWalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewWalletView'),
        centerTitle: true,
        
      ),
      body: const Center(
        child: Text(
          'NewWalletView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
