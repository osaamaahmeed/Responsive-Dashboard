import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class MyCardAndTransactionHistroySection extends StatelessWidget {
  const MyCardAndTransactionHistroySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(child: Column(
      children: [
        MyCardSection(),
        Divider(height: 40, color: Color(0xFFF1F1F1),),
        TransactionHistory(),
      ],
    ));
  }
}