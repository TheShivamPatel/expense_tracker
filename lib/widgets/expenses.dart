import 'package:expense_tracker/widgets/expenses_list/expense_list.dart';
import 'package:flutter/material.dart';

import '../models/expenses_model.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<ExpensesModel> _dummyList = [
    ExpensesModel(
      title: 'Flutter course',
      amount: 350.5,
      date: DateTime.now(),
      category: Category.work,
    ),
    ExpensesModel(
      title: 'Cinema',
      amount: 250.2,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 2,
            margin: const EdgeInsets.all(20),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Container(
              height: 200,
              width: double.infinity,
            ),
          ),
          Expanded(child: ExpenseList(expenseList: _dummyList,)),
        ],
      ),
    );
  }
}
