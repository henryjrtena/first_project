import 'package:first_project/utils/enums.dart';
import 'package:flutter/material.dart';

extension SideBarSectionExt on SideBarSection {
  IconData get icon {
    switch (this) {
      case SideBarSection.profile:
        return Icons.circle;
      case SideBarSection.leaderboards:
        return Icons.leaderboard;
      case SideBarSection.settings:
        return Icons.settings;
      case SideBarSection.logout:
        return Icons.logout;
    }
  }
}
