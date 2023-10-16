import 'package:expense_tracker/models/expenses_model.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.expenseList, required this.removeExpense});

  final List<ExpensesModel> expenseList;
  final void Function(ExpensesModel expense) removeExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenseList[index]),
        background: Container(

          color: Theme.of(context).colorScheme.error.withOpacity(0.90),
          margin: EdgeInsets.symmetric(horizontal: Theme.of(context).cardTheme.margin!.horizontal),
          child: const Icon(Icons.delete_outline),
        ),
        onDismissed: (direction) {
          removeExpense(expenseList[index]);
        },
        child: ExpensesItem(
          expenseList[index],
        ),
      ),
    );
  }
}
