import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_detials.dart';
import 'package:responsive_dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const IncomeSectionHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeDetials()),
              ],
            ),
        ],
      ),
    );
  }
}




