import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors().redColor,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 65);
}
