part of 'payment_cubit.dart';

abstract class PaymentState extends Equatable {
  const PaymentState();
}

class PaymentInitial extends PaymentState {
  @override
  List<Object> get props => [];
}

class PaymentSuccess extends PaymentState {
  @override
  List<Object> get props => [];
}

class PaymentFailed extends PaymentState {
  final String err;
  const PaymentFailed({required this.err});
  @override
  List<Object> get props => [err];
}

class PaymentCancel extends PaymentState {
  @override
  List<Object> get props => [];
}

class PaymentLoading extends PaymentState {
  @override
  List<Object> get props => [];
}
