import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(title: "Cash Withdrawal", date: "15 Nov, 2025", amount: "20,129", isWithDrawal: true),
    TransactionModel(title: "Landing Page project", date: "15 Nov, 2025 at 5:01 PM", amount: "2,000", isWithDrawal: false),
    TransactionModel(title: "Juni Mobile App project", date: "15 Nov 2025 at 8:02 PM", amount: "20,129", isWithDrawal: false),
    // TransactionModel(title: "Cash Withdrawal", date: "15 Nov 2025", amount: "20, 129", isWithDrawal: true),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}