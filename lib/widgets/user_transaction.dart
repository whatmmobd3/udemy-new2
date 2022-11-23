import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: "1", title: "Dreams of", amount: 35.1, date: DateTime.now()),
    Transaction(
        id: "2", title: "Weekly Groceries", amount: 16.5, date: DateTime.now()),
    Transaction(
        id: "3", title: "Possible Team", amount: 21.5, date: DateTime.now()),
    Transaction(
        id: "4", title: "Transform Body", amount: 33, date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction)
      ],
    );
  }
}
