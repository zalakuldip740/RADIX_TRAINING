import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodies_consumer/features/cart_manage/data/models/cart_model.dart';
import 'package:foodies_consumer/features/payment/presentation/pages/payment_failure_page.dart';
import 'package:foodies_consumer/features/payment/presentation/pages/payment_success_page.dart';
import 'package:foodies_consumer/features/payment/presentation/widgets/payment_method_list.dart';
import 'package:foodies_consumer/injection_container.dart' as di;

import '../../../../core/utils/app_colors.dart';
import '../../../order_manage/presentation/cubit/order_manage_cubit.dart';
import '../cubit/payment_cubit.dart';

class PaymentPage extends StatelessWidget {
  final int amt;
  final List<CartFinalModel> cartList;

  const PaymentPage({required this.amt, required this.cartList, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
        ),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (BuildContext context) => di.sl<PaymentCubit>(),
          child: BlocBuilder<PaymentCubit, PaymentState>(
            builder: (context, state) {
              if (state is PaymentSuccess) {
                BlocProvider.of<OrderManageCubit>(context)
                    .addOrder(cartList, amt, context);
                return const PaymentSuccessPage();
              } else if (state is PaymentFailed) {
                return PaymentFailedPage(err: state.err);
              } else if (state is PaymentCancel) {
                return PaymentMethodList(amt: amt, cartList: cartList);
              } else if (state is PaymentLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: primaryColor,
                  ),
                );
              }
              return PaymentMethodList(amt: amt, cartList: cartList);
            },
          ),
        ),
      ),
    );
  }
}
