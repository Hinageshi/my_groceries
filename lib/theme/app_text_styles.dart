import 'package:my_groceries/theme/app_colors.dart';
import 'package:flutter/widgets.dart';

class AppTextStyles {
  AppTextStyles._();
}

class _AppTextStyle extends TextStyle {
  const _AppTextStyle({
    FontWeight fontWeight,
    Color color,
    double fontSize,
    double letterSpacing,
    FontStyle fontStyle = FontStyle.normal,
  }) : super(
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          color: color,
          fontSize: fontSize,
          letterSpacing: letterSpacing,
          fontFamily: 'Roboto',
        );
}
