import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final double buttonSize;
  final double iconSize;
  final IconData iconData;
  final Color color;
  final Function onPressed;
  const MyIconButton({
    Key key,
    @required this.iconData,
    @required this.onPressed,
    this.buttonSize,
    this.iconSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        width: this.buttonSize != null ? this.buttonSize : 38,
        height: this.buttonSize != null ? this.buttonSize : 38,
        child: Icon(
          this.iconData,
          size: this.iconSize != null ? this.iconSize : 24,
          color: this.color != null ? this.color : Colors.black,
        ),
      ),
    );
  }
}

class MyImageButton extends StatelessWidget {
  final ImageProvider imageIcon;
  final double imageSize;
  final double buttonSize;
  final Color color;
  final Function onPressed;
  const MyImageButton({
    Key key,
    @required this.imageIcon,
    @required this.onPressed,
    this.imageSize,
    this.buttonSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        width: this.buttonSize != null ? this.buttonSize : 38,
        height: this.buttonSize != null ? this.buttonSize : 38,
        child: Center(
          child: Container(
            width: this.imageSize != null ? this.imageSize : 24,
            height: this.imageSize != null ? this.imageSize : 24,
            child: Image(
              image: this.imageIcon,
              fit: BoxFit.contain,
              color: this.color != null ? this.color : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
