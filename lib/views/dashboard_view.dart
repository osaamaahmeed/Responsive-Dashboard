import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayoutWidget(
        desktopLayout: (context) => DashboardDesktopLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        mobileLayout: (context) => const SizedBox(),
      ),
    );
  }
}
