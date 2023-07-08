import 'package:flutter/material.dart';

class SettingsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SettingsAppBar({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: const Text('Settings'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
