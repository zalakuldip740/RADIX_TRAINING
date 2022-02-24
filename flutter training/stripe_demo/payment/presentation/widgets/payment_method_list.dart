import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodies_consumer/features/cart_manage/data/models/cart_model.dart';
import 'package:foodies_consumer/features/payment/presentation/pages/payment_failure_page.dart';
import 'package:foodies_consumer/features/payment/presentation/widgets/payment_method_widget.dart';
import 'package:pay/pay.dart';

import '../cubit/payment_cubit.dart';

class PaymentMethodList extends StatefulWidget {
  final int amt;
  final List<CartFinalModel> cartList;

  const PaymentMethodList({required this.amt, required this.cartList, Key? key})
      : super(key: key);

  @override
  _PaymentMethodListState createState() => _PaymentMethodListState();
}

class _PaymentMethodListState extends State<PaymentMethodList> {
  final paymentItems = <PaymentItem>[];

  @override
  void initState() {
    paymentItems.add(PaymentItem(
        amount: widget.amt.toString(),
        label: "foodies",
        status: PaymentItemStatus.final_price));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
            onTap: () async {
              final response = await BlocProvider.of<PaymentCubit>(context)
                  .makePayment(widget.amt);
              if (response.success) {
                print(widget.cartList);
                // BlocProvider.of<OrderManageCubit>(context)
                //     .addOrder(widget.cartList, widget.amt, context);
              }
            },
            child: const PaymentMethodWidget(method: "Pay with Stripe")),
        GooglePayButton(
            paymentConfigurationAsset: 'json/gpay.json',
            paymentItems: paymentItems,
            style: GooglePayButtonStyle.white,
            type: GooglePayButtonType.pay,
            margin: const EdgeInsets.all(15),
            onError: (error) {
              if (!error
                  .toString()
                  .toLowerCase()
                  .split(" ")
                  .contains("canceled")) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PaymentFailedPage(err: error.toString())));
              }
            },
            width: 150,
            height: 50,
            onPaymentResult: (data) {
              print(data);
            }),
        // ApplePayButton(
        //   paymentConfigurationAsset: 'default_payment_profile_apple_pay.json',
        //   paymentItems: paymentItems,
        //   style: ApplePayButtonStyle.black,
        //   type: ApplePayButtonType.buy,
        //   margin: const EdgeInsets.only(top: 15.0),
        //   onPaymentResult: (data) {
        //     print(data);
        //   },
        //   loadingIndicator: const Center(
        //     child: CircularProgressIndicator(),
        //   ),
        // ),
      ],
    );
  }
}
