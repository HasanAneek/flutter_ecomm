import 'package:flutter/material.dart';

class HomeProductPriceText extends StatelessWidget {
  const HomeProductPriceText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
