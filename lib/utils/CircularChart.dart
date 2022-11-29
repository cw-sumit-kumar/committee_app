import 'package:committee_project/utils/MyStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:pie_chart/pie_chart.dart';

class CircularChart extends StatefulWidget {
  Map<String, double> dataMap;
  double totalValue;
  int currentValue;
  String centerText;
  CircularChart(
      {super.key,
      this.dataMap = const {},
      this.totalValue = 0,
      this.centerText = "",
      this.currentValue = 0});

  @override
  State<CircularChart> createState() => _CircularChartState();
}

class _CircularChartState extends State<CircularChart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: PieChart(
            dataMap: widget.dataMap,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            chartRadius: 70,
            totalValue: widget.totalValue,
            baseChartColor: Theme.of(context).primaryColor.withOpacity(0.2),
            colorList: <Color>[
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColor.withOpacity(0.5)
            ],
            initialAngleInDegree: 0,
            chartType: ChartType.ring,
            ringStrokeWidth: 10,
            centerText: widget.currentValue.toString(),
            centerTextStyle: MyStyles.getCircularBarCountStyle(context),
            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: false,
              // legendShape: _BoxShape.circle,
              // legendTextStyle: TextStyle(
              //   fontWeight: FontWeight.bold,
              // ),
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: false,
              showChartValues: false,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
              decimalPlaces: 0,
            ),
            // gradientList: ---To add gradient colors---
            // emptyColorGradient: ---Empty Color gradient---
          ),
        ),
        Text(
          widget.centerText,
          style: MyStyles.getCircularBarNameStyle(context),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
