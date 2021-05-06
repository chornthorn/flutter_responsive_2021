import 'package:admin/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              sections: pieChartSelectionData,
              sectionsSpace: 0,
              centerSpaceRadius: 70,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding),
                Text(
                  '39.1',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text('of 256GB')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    value: 25,
    color: primaryColor,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    value: 10,
    color: Colors.green,
    showTitle: false,
    radius: 20,
  ),
  PieChartSectionData(
    value: 8,
    color: Colors.pinkAccent,
    showTitle: false,
    radius: 15,
  ),
  PieChartSectionData(
    value: 20,
    color: primaryColor.withOpacity(0.1),
    showTitle: false,
    radius: 12,
  ),
];
