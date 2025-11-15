import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: "Dashboard", image: Assets.dashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.myTransctions),
    DrawerItemModel(title: "Statistics", image: Assets.statistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.walletAccount),
    DrawerItemModel(title: "My Investments", image: Assets.myInvestments),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
