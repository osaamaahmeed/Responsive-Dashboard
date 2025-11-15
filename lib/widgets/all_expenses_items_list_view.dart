import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() => _AllExpensesItemsListViewState();
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
      // children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(itemModel: item, selected: selectedIndex == index,),
            ),
          ),
        );
      }).toList(),
    );
    // return ListView.builder(
    //   itemBuilder: (context, index) {
    //     return AllExpensesItem(itemModel: items[index]);
    //   },
    //   scrollDirection: Axis.horizontal,
    //   itemCount: items.length,
    //   shrinkWrap: true,
    // );
  }
  
  void updateIndex(int index) {setState(() {
    selectedIndex = index;
  });}
}
