import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/theme/theme_color.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
  });

  final String text;
  final IconData? icon;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = ThemeColor.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? Colors.black
                    : Colors.white
                : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: showBorder ? Border.all(color: Colors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.grey.shade600),
              const SizedBox(width: 15),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.apply(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
