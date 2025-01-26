class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final String customer;

  PaymentIntentInputModel(
      {required this.customer, required this.amount, required this.currency});

  toJson() =>
      {'amount': "${amount}00", 'currency': currency, 'customer': customer};
}
