import "package:expense_tracker_app/model/expense.dart";
import "package:expense_tracker_app/widgets/expenses_list/expense_item.dart";
import "package:flutter/material.dart";

class ExpensesList extends StatelessWidget {
  const ExpensesList({Key? key, required this.expenses}) : super(key: key);

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctz, index) => ExpenseItem(expenses[index]));
  }
}