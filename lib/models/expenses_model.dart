import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.fastfood,
  Category.travel: Icons.mode_of_travel_sharp,
  Category.leisure: Icons.movie,
  Category.work: Icons.work
};

class ExpensesModel {
  ExpensesModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;

  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formatDate {
    return formatter.format(date);
  }
}
