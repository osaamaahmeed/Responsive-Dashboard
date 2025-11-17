import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/dots_indecator.dart';
import 'package:responsive_dashboard/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      final newPageIndex = pageController.page!.round();
      if (newPageIndex != currPageIndex) {
        setState(() {
          currPageIndex = newPageIndex;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text("My Card", style: AppStyles.styleSemiBold20(context)),
        ),
        const SizedBox(height: 20,),
        MyCardPageView(pageController: pageController,),
        const SizedBox(height: 20,),
        DotsIndecator(dotsNumber: 3, currPageIndex: currPageIndex,),
      ],
    );
  }
}
