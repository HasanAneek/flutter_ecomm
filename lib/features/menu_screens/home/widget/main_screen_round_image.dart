import 'package:flutter/cupertino.dart';

class MainBodyRoundImage extends StatelessWidget {
  const MainBodyRoundImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
