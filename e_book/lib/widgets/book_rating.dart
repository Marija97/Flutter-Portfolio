import 'package:flutter/material.dart';
import 'package:e_book/constants.dart';

class BookRating extends StatelessWidget {
  final double rating;

  const BookRating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: kBoxHolderDecoration,
      child: Column(
        children: [
          const Icon(Icons.star, color: kIconColor, size: 15),
          const SizedBox(height: 5),
          Text(
            rating.toString(),
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
