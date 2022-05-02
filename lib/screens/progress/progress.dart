import 'dart:ffi';

import "package:flutter/material.dart";
import 'package:syncfusion_flutter_charts/charts.dart';

class ProgressPage extends StatelessWidget {
  List<ProgressData> data = [
    ProgressData(1, 89),
    ProgressData(2, 87),
    ProgressData(3, 85),
    ProgressData(4, 84),
    ProgressData(5, 80),
  ];

  ProgressPage({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build

  // }

  @override
  Widget build(BuildContext context) {
    //var data;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Progress",
            style: TextStyle(
                color: Color.fromARGB(255, 52, 54, 54),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                title: ChartTitle(text: 'Weekly Weight Change Chart'),
                legend: Legend(isVisible: true),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<ProgressData, double>>[
              LineSeries<ProgressData, double>(
                dataSource: data,
                xValueMapper: (ProgressData progress, _) => progress.week,
                yValueMapper: (ProgressData progress, _) => progress.weight,
                name: 'Weight Change (X-Axis : Weeks & Y-Axis : Weight in KG)',
                dataLabelSettings: DataLabelSettings(isVisible: true),
              )
            ])));
  }
}

class ProgressData {
  final double week;
  final double weight;
  ProgressData(this.week, this.weight);

  // ProgressData(double week, double weight) {
  //   this.week = week;
  //   this.weight = weight;
  // }
}
