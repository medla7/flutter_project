import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class myPie extends StatelessWidget {
  final double valeur1;
  final double valeur2;
  // Constructor to accept the two values
  const myPie({
    Key? key,
    required this.valeur1,
    required this.valeur2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
              radius: 10,
              value: valeur2,
              color: const Color.fromARGB(255, 222, 32, 32),
              title: " "),
          PieChartSectionData(
              radius: 10,
              value: valeur1,
              color: const Color.fromARGB(255, 255, 32, 32),
              title: " "),
        ],
      ),
    );
  }
}
