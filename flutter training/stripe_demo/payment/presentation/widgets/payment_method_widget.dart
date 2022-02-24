import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_theme.dart';

class PaymentMethodWidget extends StatelessWidget {
  final String method;
  const PaymentMethodWidget({required this.method, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: primaryColor)),
      child: Text(
        method,
        textAlign: TextAlign.center,
        style: appPrimaryTheme().textTheme.headline4,
      ),
    );
  }
}
