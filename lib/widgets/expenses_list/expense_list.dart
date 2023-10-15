import 'package:expense_tracker/models/expenses_model.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenseList, required this.removeExpense});

  final List<ExpensesModel> expenseList;
  final void Function(ExpensesModel expense) removeExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenseList[index]),
        onDismissed: (direction){
          removeExpense(expenseList[index]);
        },
        child: ExpensesItem(
          expenseList[index],
        ),
      ),
    );
  }
}
