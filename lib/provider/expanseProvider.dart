import '../data/model/Expanse.dart';
import 'package:flutter/material.dart';
//
// class ExpenseProvider extends ChangeNotifier {
//   List<Expense> _expenses = [];
//   double _totalAddedMoney = 0.0;
//   double _totalExpense = 0.0;
//
//   List<Expense> get expenses => List.unmodifiable(_expenses);
//   double get totalAddedMoney => _totalAddedMoney;
//   double get totalExpense => _totalExpense;
//   double get availableBalance => _totalAddedMoney - _totalExpense;
//
//   void addExpense(Expense expense) {
//     _expenses.add(expense);
//     if (expense.reason == 'Money Added') {
//       _totalAddedMoney += expense.amount;
//     } else {
//       _totalExpense += expense.amount;
//     }
//     notifyListeners();
//   }
//
//   void updateExpense(int index, Expense newExpense) {
//     _expenses[index] = newExpense;
//     if (newExpense.reason != 'Money Added') {
//       _totalExpense -= _expenses[index].amount; // Update total expense if category changes
//     }
//     _totalExpense += newExpense.amount; // Add new expense amount
//     notifyListeners();
//   }
//
//   void removeExpense(int index) {
//     _expenses.removeAt(index);
//     if (_expenses[index].reason != 'Money Added') {
//       _totalExpense -= _expenses[index].amount; // Update total expense if removing non-money added expense
//     }
//     notifyListeners();
//   }
//
//   double getMonthlyAddedMoney(DateTime month) {
//     return _expenses.where((expense) => expense.date.month == month.month && expense.date.year == month.year && expense.reason == 'Money Added').fold<double>(0.0, (sum, expense) => sum + expense.amount);
//   }
//
//   double getMonthExpense(DateTime month) {
//     return _expenses.where((expense) => expense.date.month == month.month && expense.date.year == month.year && expense.reason != 'Money Added').fold<double>(0.0, (sum, expense) => sum + expense.amount);
//   }
// }
class ExpenseProvider extends ChangeNotifier {
  List<Expense> _expenses = [];
  double _totalAddedMoney = 0.0;
  double _totalExpense = 0.0;

  List<Expense> get expenses => List.unmodifiable(_expenses);
  double get totalAddedMoney => _totalAddedMoney;
  double get totalExpense => _totalExpense;
  double get availableBalance => _totalAddedMoney - _totalExpense;

  void addExpense(Expense expense) {
    _expenses.add(expense);
    if (expense.reason == 'Money Added') {
      _totalAddedMoney += expense.amount;
    } else {
      _totalExpense += expense.amount;
    }
    notifyListeners();
  }

  void updateExpense(int index, Expense newExpense) {
    _expenses[index] = newExpense;
    if (newExpense.reason != 'Money Added') {
      _totalExpense -= _expenses[index].amount; // Update total expense if category changes
    }
    _totalExpense += newExpense.amount; // Add new expense amount
    notifyListeners();
  }

  void removeExpense(int index) {
    _expenses.removeAt(index);
    if (_expenses[index].reason != 'Money Added') {
      _totalExpense -= _expenses[index].amount; // Update total expense if removing non-money added expense
    }
    notifyListeners();
  }

  double getMonthlyAddedMoney(DateTime month) {
    return _expenses.where((expense) => expense.date.month == month.month && expense.date.year == month.year && expense.reason == 'Money Added').fold<double>(0.0, (sum, expense) => sum + expense.amount);
  }

  double getMonthExpense(DateTime month) {
    return _expenses.where((expense) => expense.date.month == month.month && expense.date.year == month.year && expense.reason != 'Money Added').fold<double>(0.0, (sum, expense) => sum + expense.amount);
  }
}