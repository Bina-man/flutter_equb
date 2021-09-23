import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class widgetPiechart extends StatefulWidget {

  @override
  _widgetPiechartState createState() => _widgetPiechartState();
}

class _widgetPiechartState extends State<widgetPiechart> {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 5,
      chartRadius: 200,
      colorList: colorList,
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 25,
      centerText: "ETB 2,000\nDashen Bank",
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.left,
        showLegends: true,
        // legendShape: _BoxShape.circle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: true,
        showChartValuesOutside: true,
        decimalPlaces: 1,
      ),
    );
  }

}
Map<String, double> dataMap = {
  "Abyssinia Bank": 23,
  "Dashen Bank": 20,
  "Commercial bank of\nEthiopia": 25,
  "Berhan Bank": 8,
  "Enat Bank": 12,
  "Wegagen Bank": 23,
};
List<Color> colorList = [
  Colors.deepOrange,
  Colors.pinkAccent,
  Colors.deepPurple,
  Colors.blueAccent,
  Colors.green,
  Colors.orangeAccent
];

