import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detials_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetialsItem extends StatelessWidget {
  const IncomeDetialsItem({super.key, required this.itemDetialsModel});
  final ItemDetialsModel itemDetialsModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(shape: OvalBorder(), color: itemDetialsModel.color),
        ),
        const SizedBox(width: 10,),
        Expanded(child: Text(itemDetialsModel.title, style: AppStyles.styleRegular16(context))),
        Text(
        itemDetialsModel.value,
        style: AppStyles.styleMedium16(context).copyWith(color: Color(0xFF208CC8)),
      ),
      ],
    );
  }
}