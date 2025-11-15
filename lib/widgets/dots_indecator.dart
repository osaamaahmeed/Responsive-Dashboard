import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.dotsNumber, required this.currPageIndex});
  final int dotsNumber;
  final int currPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(dotsNumber, (index) => Padding(
        padding: const EdgeInsets.only(right: 6),
        child: CustomDotIndecator(isActive: index == currPageIndex),
      )),
    );
  }
}