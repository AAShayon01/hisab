class Expense {
  final DateTime date;
  final String reason;
  final double amount;

  const Expense({required this.date, required this.reason, required this.amount});
}

class Earning{
  final String categoryName;
  final double amount;

  const Earning({required this.categoryName, required this.amount,});


}