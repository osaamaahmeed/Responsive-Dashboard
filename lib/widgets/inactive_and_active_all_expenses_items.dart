import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expemses_item_header.dart';

class InActiveAllExpensesItems extends StatelessWidget {
  const InActiveAllExpensesItems({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpemsesItemHeader(image: itemModel.image,),
          const SizedBox(height: 34,),
          Text(itemModel.title, style: AppStyles.styleSemiBold16(context),),
          const SizedBox(height: 8,),
          Text(itemModel.date, style: AppStyles.styleRegular14(context)),
          const SizedBox(height: 16,),
          Text(itemModel.price, style: AppStyles.styleSemiBold24(context),),
    
    
        ],
      ),
    );
  }
}

class ActiveAllExpensesItems extends StatelessWidget {
  const ActiveAllExpensesItems({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      ),),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpemsesItemHeader(image: itemModel.image, imageBackground: Colors.white.withValues(alpha: 0.10000000149011612), imageColor: Colors.white,),
          const SizedBox(height: 34,),
          Text(itemModel.title, style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),),
          const SizedBox(height: 8,),
          Text(itemModel.date, style: AppStyles.styleRegular14(context).copyWith(color: Color(0xFFFAFAFA))),
          const SizedBox(height: 16,),
          Text(itemModel.price, style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),),
        ],
      ),
    );
  }
}