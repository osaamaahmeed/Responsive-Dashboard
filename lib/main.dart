import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}

// double getResponsiveFontSize (BuildContext context, {required double fontSize}) {
//   double scaleFactor = getScaleFactor(context);
//   double responsiveFontSize = fontSize * scaleFactor;
//   double lowerLimit = fontSize * 0.8;
//   double upperLimit = fontSize * 1.2;
//   debugPrint('Base Font: $fontSize \n lowerLimit: $lowerLimit \n upperLimit: $upperLimit \n final font: ${responsiveFontSize.clamp(lowerLimit, upperLimit)} \n with no clipping: $responsiveFontSize');
//   return responsiveFontSize.clamp(lowerLimit, upperLimit);
// }

// double getScaleFactor (BuildContext context) {
//   double width = MediaQuery.sizeOf(context).width;
//   if (width < 600) {
//     return width/400;
//   } else if (width < 900) {
//     return width / 700;
//   } else {
//     return width / 1000;
//   }
// }