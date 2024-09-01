import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'brand_title_text.dart';

class ZBrandTitleWithVerifiedIcon extends StatelessWidget {
  const ZBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    required this.title,
    this.maxLines = 1,
    this.iconColor = Colors.blueAccent,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: ZBrandTitleText(
            title: title,
            color: textColor ?? Colors.black,
            maxLine: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSize,
          ),
        ),
        const SizedBox(width: 6),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: 16,
        )
      ],
    );
  }
}
