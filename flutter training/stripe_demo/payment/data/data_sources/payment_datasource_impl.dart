import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:foodies_consumer/core/utils/api_key.dart';
import 'package:foodies_consumer/features/payment/data/data_sources/payment_datasource.dart';
import 'package:foodies_consumer/features/payment/data/models/stripe_response_model.dart';
import 'package:http/http.dart' as http;

class PaymentDataSourceImpl extends PaymentDataSource {
  @override
  Future<StripeTransactionResponse> makePayment(int amt) async {
    try {
      Map<String, dynamic> body = {
        'amount': amt.toString(),
        'currency': "INR",
        'payment_method_types[]': 'card'
      };
      var response = await http.post(
          Uri.parse('https://api.stripe.com/v1/payment_intents'),
          body: body,
          headers: {
            'Authorization': 'Bearer $secretKey',
            'Content-Type': 'application/x-www-form-urlencoded'
          });
      //print('Create Intent reponse ===> ${response.body.toString()}');
      final data = jsonDecode(response.body);
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
              paymentIntentClientSecret: data['client_secret'],
              applePay: true,
              googlePay: true,
              testEnv: true,
              style: ThemeMode.light,
              merchantCountryCode: 'IND',
              merchantDisplayName: 'Foodies'));
      return await Stripe.instance.presentPaymentSheet().then((value) {
        return StripeTransactionResponse(
            message: "Payment Successful", success: true);
      });
    } on StripeException catch (err) {
      return StripeTransactionResponse(
          message: err.error.localizedMessage.toString(), success: false);
    }
  }
}
