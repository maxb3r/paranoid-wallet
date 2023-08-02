import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:paranoid_wallet/color_schemes.g.dart';

import '../controllers/import_wallet_controller.dart';

class ImportWalletView extends GetView<ImportWalletController> {
  const ImportWalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Import Existing Wallet', style: Theme.of(context).textTheme.titleSmall),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,  right: 16.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 24),
              Row(
                children: [
                  Text(
                    'Choose the length of your Seedphrase',
                     style: Theme.of(context).textTheme.titleMedium!.copyWith(color: darkColorScheme.onBackground),
                  ),
                ],
              ),
               Text(
                    'Write your Seedphrase down on a piece of paper.' 
                    'It is not recommended to store them digitally.'
                    'Only you hold a copy of the keys, if you lose them, your fund will be gone.',
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: darkColorScheme.onBackground,),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
