import 'package:flutter/material.dart';
import 'package:e_book/constants.dart';
import 'package:e_book/widgets/book_rating.dart';
import 'package:e_book/widgets/custom_button.dart';
import 'package:e_book/models/book_data.dart' show Book;
import 'package:e_book/widgets/book_info.dart';

class BookCard extends StatelessWidget {
  final Book book;

  const BookCard({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The Stack widget allows us to put up multiple layers of widgets onto the
    // screen. The widget takes multiple children and
    // orders them from bottom to top.
    // So the first item is the bottommost and the last is the topmost.
    return Container(
      margin: const EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 221,
                width: 200,
                decoration: kBoxHolderDecoration,
              )),
          Image.asset(book.imageSrc, width: 150),
          Positioned(
              top: 45,
              right: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.favorite_border),
                  const SizedBox(height: 15),
                  BookRating(rating: book.rating),
                ],
              )),
          Positioned(
              bottom: 0,
              child: SizedBox(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: BookInfo(title: book.title, author: book.author),
                    ),
                    const Spacer(),
                    BottomButtonRow(onPressDetails: () {}, onPressRead: () {}),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class BottomButtonRow extends StatelessWidget {
  final void Function()? onPressDetails;
  final void Function()? onPressRead;

  const BottomButtonRow({
    Key? key,
    required this.onPressDetails,
    required this.onPressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              text: 'Details',
              decoration: kDiagonallyRoundedLeft,
              textStyle: TextStyle(color: Colors.black),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Read',
              decoration: kDiagonallyRoundedRight,
              textStyle: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
