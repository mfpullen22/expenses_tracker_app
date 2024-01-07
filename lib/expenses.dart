import 'package:expense_tracker_app/expenses_list.dart';
import 'package:expense_tracker_app/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Flutter Course",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Cinema",
        amount: 15.69,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
