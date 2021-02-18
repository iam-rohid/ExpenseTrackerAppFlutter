import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final ImageProvider image;
  final double size;
  final double borderRadius;
  final Function onPressed;
  const Avatar({
    Key key,
    @required this.image,
    @required this.onPressed,
    this.size,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            this.borderRadius != null ? this.borderRadius : 1000),
        child: Image(
          image: this.image,
          fit: BoxFit.cover,
          width: this.size != null ? this.size : 38,
          height: this.size != null ? this.size : 38,
        ),
      ),
    );
  }
}
