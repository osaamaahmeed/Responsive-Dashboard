import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/active_and_in_active_item.dart';
import 'package:responsive_dashboard/widgets/drawer_items_list_view.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: const UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.avatar3,
                title: "Osama Ahmed",
                subtitle: "Junior Flutter Developer",
              ),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: const Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.settings,
                    title: "Setting system",
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.logout,
                    title: "Logout",
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
          // SliverToBoxAdapter(child: SizedBox(height: 48)),
        ],
      ),
    );
  }
}
