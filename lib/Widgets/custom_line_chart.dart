import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:sravs/Widgets/glass_morphism_widget.dart';

class CustomLineChart extends StatefulWidget {
  final List<FlSpot> data;
  const CustomLineChart({super.key, required this.data});

  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        child: GlassContainer(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.4,
          child: LineChart(
            LineChartData(
              lineBarsData: [_buildLineChartBarData()],
              gridData: _buildGridData(),
              borderData: _buildBorderData(),
              titlesData: _buildTitlesData(),
            ),
            duration: Duration(milliseconds: 500),
            //Duration is the property that defines the time it takes for the change of state of the chart to reflect once data is changed or added or deleted
          ),
        ),
      ),
    );
  }

  LineChartBarData _buildLineChartBarData() {
    return LineChartBarData(
      spots: widget.data,
      isCurved: true,
      preventCurveOverShooting: true,
    );
  }

  FlGridData _buildGridData() {
    return FlGridData(show: false);
  }

  FlBorderData _buildBorderData() {
    return FlBorderData(show: true);
  }

  FlTitlesData _buildTitlesData() {
    return FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 25,
          getTitlesWidget: (value, meta) {
            switch (value.toInt()) {
              case 1:
                return Text('Jan');
              case 6:
                return Text('May');
              case 10:
                return Text('Oct');
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }
}
