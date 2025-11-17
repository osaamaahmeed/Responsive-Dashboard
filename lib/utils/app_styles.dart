import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: Color(0xFF064060),
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(fontSize: 20, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(fontSize: 20, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(fontSize: 12, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(fontSize: 24, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(fontSize: 14, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(fontSize: 18, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  // debugPrint(
  //   'Base Font: $fontSize \n lowerLimit: $lowerLimit \n upperLimit: $upperLimit \n final font: ${responsiveFontSize.clamp(lowerLimit, upperLimit)} \n with no clipping: $responsiveFontSize',
  // );
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalDispatcher = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalDispatcher / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
