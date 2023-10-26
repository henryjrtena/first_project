import 'package:first_project/utils/enums.dart';
import 'package:flutter/material.dart';

extension BottomNavsExt on BottomNavs {
  IconData get icon {
    switch (this) {
      case BottomNavs.home:
        return Icons.home;
      case BottomNavs.news:
        return Icons.newspaper;
      case BottomNavs.code:
        return Icons.code;
      case BottomNavs.profile:
        return Icons.account_circle;
    }
  }
}
