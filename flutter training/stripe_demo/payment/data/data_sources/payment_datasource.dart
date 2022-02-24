import '../models/stripe_response_model.dart';

abstract class PaymentDataSource {
  Future<StripeTransactionResponse> makePayment(int amt);
}
