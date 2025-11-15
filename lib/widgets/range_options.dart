import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Monthly", style: AppStyles.styleMedium16),
          SizedBox(width: 18,),
          Transform.rotate(angle: -1.57079633, child: Icon(Icons.arrow_back_ios, size: 16)),
        ],
      ),
    );
  }
}