import 'package:flutter/material.dart';
import 'package:foodies_consumer/core/utils/app_colors.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utils/app_theme.dart';

class PaymentFailedPage extends StatelessWidget {
  final String err;

  const PaymentFailedPage({required this.err, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/json/payment_failed.json'),
          Text(err),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: primaryColor)),
            child: Text(
              "Retry",
              textAlign: TextAlign.center,
              style: appPrimaryTheme().textTheme.headline4,
            ),
          )
        ],
      )),
    );
  }
}
