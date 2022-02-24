import '../../data/models/stripe_response_model.dart';

abstract class PaymentRepository {
  Future<StripeTransactionResponse> makePayment(int amt);
}
