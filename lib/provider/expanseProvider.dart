import 'package:intl/intl.dart';
import '../data/model/Expanse.dart';
import 'package:flutter/material.dart';
class ExpenseProvider with ChangeNotifier {
  String currentMonth = DateFormat('MMMM').format(DateTime.now());
  final List<Earning> _dailyEarnings = [];
  final List<Expense> _dailyExpenses = [];
  List<Earning> get totalEarnings => _dailyEarnings;
  List<Expense> get totalExpenses => _dailyExpenses;
  Expense? _editExpense;

  void startEditing(Expense expense){
    _editExpense=expense;
    notifyListeners();
  }
  void stopEditing(){
    _editExpense = null;
    notifyListeners();
  }

  bool isEditing(Expense expense) {
    return _editExpense == expense;
  }


  void addEarning(Earning earning) {
    _dailyEarnings.add(earning);
    notifyListeners();
  }

  double getAddedMoney() {
    return _dailyEarnings.fold(0.0, (total, earning) => total + earning.amount);
  }

  void addExpense(Expense expense) {
    _dailyExpenses.add(expense);
    notifyListeners();
  }

  double getTotalExpense() {
    return _dailyExpenses.fold(0.0, (total, expense) => total + expense.amount);
  }


}