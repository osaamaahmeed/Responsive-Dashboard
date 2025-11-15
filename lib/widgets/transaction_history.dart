import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20,),
        Text("15 Nov 2025", style: AppStyles.styleMedium16.copyWith(color: Color(0xFFAAAAAA)),),
        const SizedBox(height: 16,),
        const TransactionHistoryListView(),
      ],
    );
  }
}


