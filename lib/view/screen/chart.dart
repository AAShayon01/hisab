// import 'package:flutter/material.dart';
// import 'package:hisab/utils/app_constant.dart';
// class Chart extends StatelessWidget {
//   const Chart({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppConst.appBackgroundColor,
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:provider/provider.dart';
//
// import 'path_to_chart_data_provider.dart'; // Import your actual path to the provider file
//
// class ChartWidget extends StatelessWidget {
//   final TextEditingController _monthController = TextEditingController();
//   final TextEditingController _incomeController = TextEditingController();
//   final TextEditingController _expenseController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Monthly Chart'),
//       ),
//       body: Consumer<ChartDataProvider>(
//         builder: (context, chartProvider, child) {
//           final chartData = chartProvider.chartData;
//
//           return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 _buildForm(context),
//                 SizedBox(height: 16),
//                 LineChart(
//                   LineChartData(
//                     lineBarsData: [
//                       LineChartBarData(
//                         spots: chartData
//                             .asMap()
//                             .entries
//                             .map((entry) => FlSpot(entry.key.toDouble(), entry.value.income))
//                             .toList(),
//                         isCurved: true,
//                         colors: [Colors.blue],
//                         dotData: FlDotData(show: false),
//                         belowBarData: BarAreaData(show: false),
//                       ),
//                       LineChartBarData(
//                         spots: chartData
//                             .asMap()
//                             .entries
//                             .map((entry) => FlSpot(entry.key.toDouble(), entry.value.expense))
//                             .toList(),
//                         isCurved: true,
//                         colors: [Colors.red],
//                         dotData: FlDotData(show: false),
//                         belowBarData: BarAreaData(show: false),
//                       ),
//                     ],
//                     titlesData: FlTitlesData(
//                       leftTitles: SideTitles(showTitles: true),
//                       bottomTitles: SideTitles(
//                         showTitles: true,
//                         getTitles: (value) => chartData[value.toInt()].month,
//                       ),
//                     ),
//                     gridData: FlGridData(show: true),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildForm(BuildContext context) {
//     final chartProvider = Provider.of<ChartDataProvider>(context, listen: false);
//
//     return Form(
//       child: Column(
//         children: [
//           TextFormField(
//             controller: _monthController,
//             decoration: InputDecoration(labelText: 'Month'),
//           ),
//           TextFormField(
//             controller: _incomeController,
//             keyboardType: TextInputType.number,
//             decoration: InputDecoration(labelText: 'Income'),
//           ),
//           TextFormField(
//             controller: _expenseController,
//             keyboardType: TextInputType.number,
//             decoration: InputDecoration(labelText: 'Expense'),
//           ),
//           SizedBox(height: 8),
//           ElevatedButton(
//             onPressed: () {
//               final month = _monthController.text;
//               final income = double.parse(_incomeController.text);
//               final expense = double.parse(_expenseController.text);
//
//               final newEntry = ChartEntry(month: month, income: income, expense: expense);
//               chartProvider.setChartData([...chartProvider.chartData, newEntry]);
//
//               _monthController.clear();
//               _incomeController.clear();
//               _expenseController.clear();
//             },
//             child: Text('Add Data'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:provider/provider.dart';
//
// import '../../data/model/chartEntry.dart';
// import '../../provider/chartProvider.dart';// Import your actual path to the provider file
//
// class Chart extends StatelessWidget {
//   final TextEditingController _monthController = TextEditingController();
//   final TextEditingController _incomeController = TextEditingController();
//   final TextEditingController _expenseController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Monthly Chart'),
//       ),
//       body: Consumer<ChartDataProvider>(
//         builder: (context, chartProvider, child) {
//           final chartData = chartProvider.chartData;
//
//           return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: LineChart(
//               LineChartData(
//                 lineBarsData: [
//                   LineChartBarData(
//                     spots: chartData
//                         .asMap()
//                         .entries
//                         .map((entry) => FlSpot(entry.key.toDouble(), entry.value.income))
//                         .toList(),
//                     isCurved: true,
//                     colors: [Colors.blue],
//                     dotData: FlDotData(show: false),
//                     belowBarData: BarAreaData(show: false),
//                     isStrokeCapRound: true, // Add this line
//                   ),
//                   LineChartBarData(
//                     spots: chartData
//                         .asMap()
//                         .entries
//                         .map((entry) => FlSpot(entry.key.toDouble(), entry.value.expense))
//                         .toList(),
//                     isCurved: true,
//                     colors: [Colors.red],
//                     dotData: FlDotData(show: false),
//                     belowBarData: BarAreaData(show: false),
//                     isStrokeCapRound: true, // Add this line
//                   ),
//                 ],
//                 titlesData: FlTitlesData(
//                   leftTitles: SideTitles(showTitles: true),
//                   bottomTitles: SideTitles(
//                     showTitles: true,
//                     getTitles: (value) {
//                       final index = value.toInt();
//                       if (index >= 0 && index < chartData.length) {
//                         return chartData[index].month;
//                       }
//                       return '';
//                     },
//                   ),
//                 ),
//                 gridData: FlGridData(show: true),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
//   Widget _buildForm(BuildContext context) {
//     final chartProvider = Provider.of<ChartDataProvider>(context, listen: false);
//
//     return Form(
//       child: Column(
//         children: [
//           TextFormField(
//             controller: _monthController,
//             decoration: InputDecoration(labelText: 'Month'),
//           ),
//           TextFormField(
//             controller: _incomeController,
//             keyboardType: TextInputType.number,
//             decoration: InputDecoration(labelText: 'Income'),
//           ),
//           TextFormField(
//             controller: _expenseController,
//             keyboardType: TextInputType.number,
//             decoration: InputDecoration(labelText: 'Expense'),
//           ),
//           SizedBox(height: 8),
//           ElevatedButton(
//             onPressed: () {
//               final month = _monthController.text;
//               final income = double.parse(_incomeController.text);
//               final expense = double.parse(_expenseController.text);
//
//               final newEntry = ChartEntry(month: month, income: income, expense: expense);
//               chartProvider.setChartData([...chartProvider.chartData, newEntry]);
//
//               _monthController.clear();
//               _incomeController.clear();
//               _expenseController.clear();
//             },
//             child: Text('Add Data'),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/utils/app_constant.dart';
class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.appBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child:  Text('Chart',style: AppConst.appTextStyle,),
          ),
        )
    );
  }
}
