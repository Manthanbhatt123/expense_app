import 'package:flutter/material.dart';
import 'package:untitled/list/expenses_lists.dart';

import 'models/expense_model.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StateExpenses();
  }
}

class _StateExpenses extends State<Expenses> {
  final List<ExpenseModel> _registeredExpense = [
    ExpenseModel(
      title: 'Flutter Course',
      amount: 22.22,
      date: DateTime.now(),
      category: Category.work,
    ),
    ExpenseModel(
      title: 'DineTIme',
      amount: 22.22,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpense),
          ),
        ],
      ),
    );
  }
}
