import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget  implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Press on Button'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
