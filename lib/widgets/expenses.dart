import 'package:expense_tracker/widgets/expenses_list/expense_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
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
      amount: 350.5424,
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

  void addExpenseToList(
      ExpensesModel expense) {
    setState(() {
      _dummyList.add(expense);
    });
  }

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => SizedBox(
        width: double.infinity,
        child: Center(
          child: NewExpense(
            newExpense: addExpenseToList,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(
              Icons.add,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Card(
            elevation: 2,
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: SizedBox(
              height: 200,
              width: double.infinity,
            ),
          ),
          Expanded(
              child: ExpenseList(
            expenseList: _dummyList,
          )),
        ],
      ),
    );
  }
}
