import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodies_consumer/core/utils/app_colors.dart';
import 'package:foodies_consumer/injection_container.dart' as di;
import 'package:lottie/lottie.dart';

import '../../../../core/utils/app_theme.dart';
import '../../../order_manage/presentation/cubit/order_manage_cubit.dart';
import '../../../order_manage/presentation/pages/order_history.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/json/payment_success.json'),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) =>
                        di.sl<OrderManageCubit>()..getOrderList(),
                    child: const OrderHistory(),
                  ),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: primaryColor)),
              child: Text(
                "Go to My Order",
                textAlign: TextAlign.center,
                style: appPrimaryTheme().textTheme.headline4,
              ),
            ),
          )
        ],
      )),
    );
  }
}
