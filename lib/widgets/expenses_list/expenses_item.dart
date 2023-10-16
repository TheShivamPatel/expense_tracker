import 'package:expense_tracker/models/expenses_model.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expenses, {super.key});

  final ExpensesModel expenses;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(categoryIcons[expenses.category]),
        title: Text(
          expenses.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(
          '₹${expenses.amount.toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 15),
        ),
        trailing: Text(expenses.formatDate),
      ),
    );
  }
}
