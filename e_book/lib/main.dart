import 'package:e_book/screens/home_screen.dart';
import 'package:e_book/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(BookApp());

class BookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: kBitmapBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline2,
                children: kFlamingo,
              ),
            ),
            SizedBox(height: size.height * .025),
            CustomButton(
              text: 'start reading',
              width: size.width * 0.6,
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              decoration: kRoundedButtonDecoration,
              padding: const EdgeInsets.symmetric(vertical: 16),
              onPress: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
