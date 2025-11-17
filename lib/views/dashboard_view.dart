import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.desktop
          ? AppBar(
              leading: IconButton(
                icon: const Icon(Icons.menu, size: 32),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
              backgroundColor: Color(0xFFFAFAFA),
              elevation: 0,
            )
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayoutWidget(
        desktopLayout: (context) => DashboardDesktopLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        mobileLayout: (context) => const DashboardMobileLayout(),
      ),
    );
  }
}
