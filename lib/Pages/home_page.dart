import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sravs/Widgets/custom_line_chart.dart';
import 'package:sravs/Widgets/list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Sravs'),),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ShravsBackground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(child: _chart1()),
                    SizedBox(child: _chart1()),
                    SizedBox(child: _chart1()),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    // SizedBox(child: _chart1(screenWidth, screenHeight)),
                    // SizedBox(child: _chart1(screenWidth, screenHeight)),
                    // SizedBox(child: _chart1(screenWidth, screenHeight)),
                    SizedBox(child:_list1()),
                    // SizedBox(child:_list1()),
                    // SizedBox(child:_list1()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chart1() {
    return CustomLineChart(
      data: [
        FlSpot(1, 1),
        FlSpot(2, 3),
        FlSpot(3, 2),
        FlSpot(4, 5),
        FlSpot(5, 4),
        FlSpot(6, 2),
        FlSpot(7, 4),
        FlSpot(8, 3),
        FlSpot(9, 6),
        FlSpot(10, 5),
        FlSpot(11, 1),
        FlSpot(12, 3),
        FlSpot(13, 2),
        FlSpot(14, 5),
        FlSpot(15, 4),
        FlSpot(16, 2),
        FlSpot(17, 4),
        FlSpot(18, 3),
        FlSpot(19, 6),
        FlSpot(20, 5),
        FlSpot(21, 1),
        FlSpot(22, 3),
        FlSpot(23, 2),
        FlSpot(24, 5),
        FlSpot(25, 4),
        FlSpot(26, 2),
        FlSpot(27, 4),
        FlSpot(28, 3),
        FlSpot(29, 6),
        FlSpot(30, 5),
        FlSpot(31, 1),
        FlSpot(32, 3),
        FlSpot(33, 2),
        FlSpot(34, 5),
        FlSpot(35, 4),
        FlSpot(36, 2),
        FlSpot(37, 4),
        FlSpot(38, 3),
        FlSpot(39, 6),
        FlSpot(40, 5),
        FlSpot(41, 1),
      ],
    );
  }

  Widget _list1() {
    return ListWidget();
  }
}