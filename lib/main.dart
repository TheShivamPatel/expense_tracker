import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
      theme: ThemeData(useMaterial3: true),
    ),
  );
}
