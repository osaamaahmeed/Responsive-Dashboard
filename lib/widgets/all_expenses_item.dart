import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/inactive_and_active_all_expenses_items.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel, required this.selected});
  final AllExpensesItemModel itemModel;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return selected ? ActiveAllExpensesItems(itemModel: itemModel) : InActiveAllExpensesItems(itemModel: itemModel);
  }
}

