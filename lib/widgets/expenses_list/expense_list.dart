import 'package:expense_tracker/models/expenses_model.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenseList});

  final List<ExpensesModel> expenseList;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),

          child: ListTile(
            title: Text(
              expenseList[index].title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '₹${expenseList[index].amount}',
              style: const TextStyle(fontSize: 15),
            ),
            trailing: Text('${expenseList[index].category}'),
          ),
        );
      },
    );
  }
}
