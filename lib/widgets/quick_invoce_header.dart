import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoceHeader extends StatelessWidget {
  const QuickInvoceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Quick Invocie", style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xFFFAFAFA),
          ),
          child: Icon(Icons.add, color: Color(0xFF4EB7F2)),
        ),
      ],
    );
  }
}
