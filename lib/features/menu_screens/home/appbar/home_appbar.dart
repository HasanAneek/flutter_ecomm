import 'package:flutter/material.dart';
import '../cart/cart_menu_icon.dart';
import 'appbar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Day for shopping",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.grey.shade300),
          ),
          Text(
            "Jahid Hasan",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(iconColor: Colors.white, onPressed: () {}),
      ],
      backgroundColor: Colors.blueAccent,
    );
  }
}
