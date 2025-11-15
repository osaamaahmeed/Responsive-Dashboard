import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/widgets/custom_text_field.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoce_header.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoceHeader(),
          LatestTransaction(),
          Divider(height: 48),
          TitleTextField(title: "Customer name", hint: "Type customer name"),
        ],
      ),
    );
  }
}
