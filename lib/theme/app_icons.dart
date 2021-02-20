import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppIcons {
  AppIcons._();
}

class _AppIconData extends IconData {
  const _AppIconData(int codePoint)
      : super(
          codePoint,
          fontFamily: 'app_icons',
        );
}
