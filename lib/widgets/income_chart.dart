import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getCharData()));
  }

  PieChartData getCharData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback:(flTouchEvent, pieTouchResponse) {
          activeIndex = pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
          color: Color(0xFF208CC8),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          color: Color(0xFF4EB7F2),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          color: Color(0xFF064061),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          radius: activeIndex == 3 ? 60 : 50,
          color: Color(0xFFE2DECD),
          showTitle: false,
        ),
      ],
    );
  }
}
