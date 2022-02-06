import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final List<InlineSpan> textList;

  const LargeText({
    Key? key,
    required this.textList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: RichText(
        text: TextSpan(
          style: textTheme.headline4,
          children: textList,
        ),
      ),
    );
  }
}
