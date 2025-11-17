import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detials_model.dart';
import 'package:responsive_dashboard/widgets/income_item_detials.dart';

class IncomeDetials extends StatelessWidget {
  const IncomeDetials({super.key});
  static const List<ItemDetialsModel> items = [
    ItemDetialsModel(
      color: Color(0xFF208CC8),
      title: "Design service",
      value: "40%",
    ),
    ItemDetialsModel(
      color: Color(0xFF4EB7F2),
      title: "Design product",
      value: "25%",
    ),
    ItemDetialsModel(
      color: Color(0xFF064061),
      title: "Product royalti",
      value: "20%",
    ),
    ItemDetialsModel(color: Color(0xFFE2DECD), title: "Other", value: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map( (e) => Padding(padding: EdgeInsets.only(left: 5, bottom: 5), child: IncomeDetialsItem(itemDetialsModel: e))).toList(),
    );
  }
}


