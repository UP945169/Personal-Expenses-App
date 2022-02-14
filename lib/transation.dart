import 'package:flutter/foundation.dart';


class Transaction{

  @required String transactionId;
  @required String transactionName;
  @required double amount;
  @required DateTime transactionDate;

  Transaction({required this.transactionId,required this.transactionName,required this.amount,required this.transactionDate});

}