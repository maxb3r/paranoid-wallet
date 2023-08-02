import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

import '../../../../color_schemes.g.dart';

import '../../import_wallet/views/import_wallet_view.dart';

import '../../new_wallet/views/new_wallet_view.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/fallingCoins.png', // Replace with your image asset path
              width: 246,
              height: 508,
            ),
            SizedBox(height: 24),
             Text(
              'Paranoid Wallet',
              style: TextStyle(
              fontSize: 45, fontFamily: 'Strippy', color: darkColorScheme.onBackground,),
            ),
             Text(
              'A self-custodial Bitcoin-only wallet',
              style: TextStyle(color: darkColorScheme.onBackground)
            ),
            const SizedBox(height: 64),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.to(const ImportWalletView());
                    // Implement the functionality for the first CTA button
                  },
                  child: const Text('I already have one'
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    Get.to(const NewWalletView());
                    // Implement the functionality for the second CTA button
                  },
                  child: Text('Create a new Wallet',
                  style: TextStyle(
                    color: darkColorScheme.onPrimary
                  ),
                  ),
                ),
              ],
            ),
          ],
      ),
    )
    );
  }
}
