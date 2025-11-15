import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transaction History", style: AppStyles.styleSemiBold20),
        Text(
          "See All",
          style: AppStyles.styleMedium16.copyWith(color: Color(0xFF4EB7F2)),
        ),
      ],
    );
  }
}