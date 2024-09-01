import 'package:flutter/material.dart';

class RoundThumbnailImage extends StatelessWidget {
  const RoundThumbnailImage({
    super.key,
    this.fit = BoxFit.fitWidth,
    required this.imageUrl,
    this.width = 180,
    this.onPressed,
    this.borderRadius = 11,
    this.backgroundColor,
  });

  final double borderRadius;
  final double width;
  final BoxFit? fit;
  final Color? backgroundColor;
  final String imageUrl;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image(
            width: width,
            fit: fit,
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
