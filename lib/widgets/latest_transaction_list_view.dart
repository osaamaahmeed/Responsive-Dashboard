import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.avatar1,
      title: "Osama Ahmed",
      subtitle: "Junior Flutter Developer",
    ),
    UserInfoModel(
      image: Assets.avatar2,
      title: "Osama Ahmed",
      subtitle: "Junior Flutter Developer",
    ),
    UserInfoModel(
      image: Assets.avatar3,
      title: "Osama Ahmed",
      subtitle: "Junior Flutter Developer",
    ),
    UserInfoModel(
      image: Assets.avatar1,
      title: "Osama Ahmed",
      subtitle: "Junior Flutter Developer",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(userInfoModel: items[index]),
    //       );
    //     },
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //   ),
    // );
  }
}
