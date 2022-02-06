import 'package:flutter/material.dart';
import 'package:e_book/constants.dart';
import 'package:e_book/widgets/book_info.dart';
import 'package:e_book/widgets/book_rating.dart';
import 'package:e_book/widgets/custom_button.dart';
import 'package:e_book/models/book_data.dart' show Book;

class SpecialBookCard extends StatelessWidget {
  final Book book;

  const SpecialBookCard({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      width: double.infinity,
      height: 245,
      child: Stack(children: [
        Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  color: kPaleGrayColor,
                  borderRadius: kGlobalBorderRadius,
                ))),
        TextualContent(
          title: book.title,
          author: book.author,
          description: book.description ?? '',
          rating: book.rating,
        ),
        Positioned(right: 0, child: Image.asset(book.imageSrc)),
        const Positioned(
            bottom: 0,
            right: 0,
            width: 200,
            height: 40,
            child: CustomButton(
              text: 'Read',
              decoration: kDiagonallyRoundedRight,
              textStyle: TextStyle(color: Colors.white),
            ))
      ]),
    );
  }
}

class TextualContent extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final double rating;

  const TextualContent({
    Key? key,
    required this.title,
    required this.author,
    required this.description,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 24, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('New York Time Best For 11th March 2020',
              style: TextStyle(fontSize: 9, color: kLightBlackColor)),
          BookInfo(
            title: title,
            author: author,
            titleStyle: kBoldTextStyle.copyWith(fontSize: 17),
          ),
          Row(children: [
            BookRating(rating: rating),
            const SizedBox(width: 20),
            Flexible(
              child: Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: kLightTextStyle.copyWith(fontSize: 10),
              ),
            ),
            const Spacer(),
          ]),
        ],
      ),
    );
  }
}
