import 'package:flutter/material.dart';

class HomeSectionHeading extends StatelessWidget {
  const HomeSectionHeading(
      {super.key,
      required this.title,
      this.onPressed,
      this.showActionButton = true,
      this.buttonText = 'View All'});

  final String title;
  final void Function()? onPressed;
  final bool showActionButton;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }
}
