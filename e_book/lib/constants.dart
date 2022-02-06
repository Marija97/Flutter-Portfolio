import 'package:flutter/material.dart';

const kBlackColor = Color(0xFF393939);
const kLightBlackColor = Color(0xFF8F8F8F);
const kIconColor = Color(0xFFF48A37);
const kProgressIndicator = Color(0xFFBE7066);

final kPaleGrayColor = const Color(0xFFEAEAEA).withOpacity(.45);

// images
const kBitmapBackground = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/Bitmap.png'),
    fit: BoxFit.fill,
  ),
);

const kMainPageBg = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/main_page_bg.png'),
    fit: BoxFit.fitWidth,
    alignment: Alignment.topCenter,
  ),
);

final kGlobalBorderRadius = BorderRadius.circular(29);

final kRoundedButtonDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
      BoxShadow(
        offset: const Offset(0, 15),
        blurRadius: 30,
        color: const Color(0xFF666666).withOpacity(.11),
      )
    ]);

final kBoxHolderDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: kGlobalBorderRadius,
    boxShadow: [
      BoxShadow(
        offset: const Offset(0, 10),
        blurRadius: 33,
        color: const Color(0xFFD3D3D3).withOpacity(.84),
      )
    ]);

const kDiagonallyRoundedRight = BoxDecoration(
  color: kBlackColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(29),
    bottomRight: Radius.circular(29),
  ),
);

const kDiagonallyRoundedLeft = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(29),
    bottomLeft: Radius.circular(29),
  ),
);

// texts

const kBoldTextStyle = TextStyle(fontWeight: FontWeight.bold);
const kLightTextStyle = TextStyle(color: kLightBlackColor);

const List<InlineSpan> kFlamingo = [
  TextSpan(text: 'flamin'),
  TextSpan(text: 'go.', style: kBoldTextStyle),
];

const List<InlineSpan> kWhatAreYouReadingToday = [
  TextSpan(text: 'What are you \nreading '),
  TextSpan(text: 'today?', style: kBoldTextStyle),
];

const List<InlineSpan> kBestOfTheDay = [
  TextSpan(text: 'Best of the '),
  TextSpan(text: 'day', style: kBoldTextStyle),
];

const List<InlineSpan> kContinueReading = [
  TextSpan(text: 'Continue '),
  TextSpan(text: 'reading...', style: kBoldTextStyle),
];
