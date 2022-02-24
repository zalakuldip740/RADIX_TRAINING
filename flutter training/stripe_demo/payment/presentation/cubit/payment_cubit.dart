import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:foodies_consumer/features/payment/domain/use_cases/make_payment_usecase.dart';

import '../../data/models/stripe_response_model.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final MakePaymentUseCase makePaymentUseCase;

  PaymentCubit({required this.makePaymentUseCase}) : super(PaymentInitial());

  Future<StripeTransactionResponse> makePayment(int amt) async {
    emit(PaymentLoading());
    StripeTransactionResponse response =
        await makePaymentUseCase.call(amt * 100);
    if (response.success) {
      emit(PaymentSuccess());
    } else {
      if (response.message.toLowerCase().split(" ").contains("canceled")) {
        emit(PaymentCancel());
      } else {
        emit(PaymentFailed(err: response.message));
      }
    }
    return response;
  }
}
