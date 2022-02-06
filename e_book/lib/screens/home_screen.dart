import 'package:e_book/widgets/large_text.dart';
import 'package:flutter/material.dart';
import 'package:e_book/constants.dart';
import 'package:e_book/widgets/book_card.dart' show BookCard;
import 'package:e_book/widgets/special_book_card.dart' show SpecialBookCard;
import 'package:e_book/models/book_data.dart';

class HomeScreen extends StatelessWidget {
  List<Widget> generateBookCardList() {
    List<Widget> bookCards = [];
    for (Book book in BookData.books) {
      bookCards.add(BookCard(book: book));
    }
    bookCards.add(const SizedBox(width: 30));
    return bookCards;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: kMainPageBg,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.1),
              const LargeText(textList: kWhatAreYouReadingToday),
              const SizedBox(height: 30),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: generateBookCardList())),
              const LargeText(textList: kBestOfTheDay),
              SizedBox(height: size.height * 0.02),
              SpecialBookCard(book: BookData.bestOfTheDay),
              SizedBox(height: size.height * 0.05),
              // Todo Continue reading section ...
              // const LargeText(textList: kContinueReading),
              // SizedBox(height: size.height * 0.05), // ...
            ],
          ),
        ),
      ),
    );
  }
}
