import 'package:flutter/material.dart';
import 'package:e_book/constants.dart';

class BookInfo extends StatelessWidget {
  final String title;
  final String author;
  final TextStyle titleStyle;
  final TextStyle authorStyle;

  const BookInfo({
    Key? key,
    required this.title,
    required this.author,
    this.titleStyle = kBoldTextStyle,
    this.authorStyle = kLightTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3,
      text: TextSpan(
        style: const TextStyle(color: kBlackColor),
        children: [
          TextSpan(text: '$title\n', style: titleStyle),
          TextSpan(text: author, style: authorStyle),
        ],
      ),
    );
  }
}
