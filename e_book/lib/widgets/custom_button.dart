import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPress;
  final BoxDecoration? decoration;
  final TextStyle? textStyle;

  final double width;
  final EdgeInsets? padding;

  const CustomButton({
    Key? key,
    this.text = '',
    this.onPress,
    this.decoration,
    this.width = double.infinity,
    this.padding,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        alignment: Alignment.center,
        padding: padding,
        decoration: decoration,
        child: Text(text, style: textStyle),
      ),
    );
  }
}
