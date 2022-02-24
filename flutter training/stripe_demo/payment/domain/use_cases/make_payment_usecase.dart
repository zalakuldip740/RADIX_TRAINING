import 'package:foodies_consumer/features/payment/domain/repositories/payment_repository.dart';

import '../../data/models/stripe_response_model.dart';

class MakePaymentUseCase {
  final PaymentRepository paymentRepository;

  MakePaymentUseCase({required this.paymentRepository});

  Future<StripeTransactionResponse> call(int amt) async {
    return await paymentRepository.makePayment(amt);
  }
}
