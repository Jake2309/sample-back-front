import 'package:meta/meta.dart';

class StockChart {
  final DateTime date;
  final double close;
  final String label;

  StockChart({required this.date, required this.close, required this.label});

  static List<StockChart> toList(List<dynamic> items) {
    return items.map((item) => StockChart.fromJson(item)).toList();
  }

  factory StockChart.fromJson(Map<dynamic, dynamic> json) {
    return StockChart(
      date: DateTime.parse(json['date']),
      close: json['close'],
      label: json['label'],
    );
  }
}
