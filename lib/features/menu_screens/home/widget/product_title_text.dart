import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.title,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
    this.textSizes = false,
  });

  final String title;
  final int maxLines;
  final TextAlign textAlign;
  final bool textSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textSizes
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
