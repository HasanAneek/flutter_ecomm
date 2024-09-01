import 'package:flutter/material.dart';


class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 60,
            width: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: ' i agree to',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ' Private Policy',
                style: Theme.of(context).textTheme.bodySmall!.apply(
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                ),
              ),
              TextSpan(
                text: " and ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: "Terms of Use",
                style: Theme.of(context).textTheme.bodySmall?.apply(
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
