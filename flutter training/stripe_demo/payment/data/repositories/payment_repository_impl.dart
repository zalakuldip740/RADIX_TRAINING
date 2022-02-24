import 'package:foodies_consumer/features/payment/data/data_sources/payment_datasource.dart';
import 'package:foodies_consumer/features/payment/domain/repositories/payment_repository.dart';

import '../models/stripe_response_model.dart';

class PaymentRepositoryImpl extends PaymentRepository {
  final PaymentDataSource paymentDataSource;
  PaymentRepositoryImpl({required this.paymentDataSource});
  @override
  Future<StripeTransactionResponse> makePayment(int amt) async {
    return await paymentDataSource.makePayment(amt);
  }
}
