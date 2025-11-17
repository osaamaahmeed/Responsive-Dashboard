import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final items = [
    AllExpensesItemModel(
      image: Assets.balance,
      title: "Balance",
      date: "Nov 2025",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.income,
      title: "Income",
      date: "Nov 2025",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.expenses,
      title: "Expenses",
      date: "Nov 2025",
      price: r"$20,129",
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[0],
              selected: selectedIndex == 0,
            ),
          ),
        ),
        SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[1],
              selected: selectedIndex == 1,
            ),
          ),
        ),
        SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[2],
              selected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
