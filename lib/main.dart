import 'dart:async';

import 'package:borakay_shopping/element/gridview_dynamic_desktop_website.dart';
import 'package:borakay_shopping/element/gridview_dynamic_mobile.dart';
import 'package:borakay_shopping/element/text_heading.dart';
import 'package:borakay_shopping/models/product_detail.dart';
import 'package:borakay_shopping/utils/helper.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  if (Platform.isWindows) {
    runApp(const MyApp(
      isFromDesktop: true,
    ));
  } else {
    runApp(const MyApp(
      isFromDesktop: false,
    ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isFromDesktop});

  final bool isFromDesktop;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.yellow, // Set the background color globally
      ),
      debugShowCheckedModeBanner: false,
      home: isFromDesktop ? const SplashScreen() : const MyHomePage(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        ),
      );
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Image.asset(
            'assets/images/img_splash.png',
            // replace with the actual asset path
            width: (width / 4),
            height: height / 4,
            // set the width again to ensure the desired width
            // set the height again to ensure the desired height
            fit: BoxFit.fitHeight, // adjust the fit as needed
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Sample list of items
  final List<ProductDetail> productDetails = [
    ProductDetail(
        name: 'Bablot',
        price: 'Rs:300',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_1.jpg'),
    ProductDetail(
        name: 'Wilson',
        price: 'Rs:450',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_2.jpg'),
    ProductDetail(
        name: 'Yonex',
        price: 'Rs:234',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_3.jpg'),
    ProductDetail(
        name: 'Head',
        price: 'Rs:501',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_4.jpg'),
    ProductDetail(
        name: 'Dunlop',
        price: 'Rs:699',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_5.jpg'),
    ProductDetail(
        name: 'Bablot',
        price: 'Rs:300',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_1.jpg'),
    ProductDetail(
        name: 'Wilson',
        price: 'Rs:450',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_2.jpg'),
    ProductDetail(
        name: 'Yonex',
        price: 'Rs:234',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_3.jpg'),
    ProductDetail(
        name: 'Head',
        price: 'Rs:501',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_4.jpg'),
    ProductDetail(
        name: 'Dunlop',
        price: 'Rs:699',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_5.jpg'),
    ProductDetail(
        name: 'Bablot',
        price: 'Rs:300',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_1.jpg'),
    ProductDetail(
        name: 'Wilson',
        price: 'Rs:450',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_2.jpg'),
    ProductDetail(
        name: 'Yonex',
        price: 'Rs:234',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_3.jpg'),
    ProductDetail(
        name: 'Head',
        price: 'Rs:501',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_4.jpg'),
    ProductDetail(
        name: 'Dunlop',
        price: 'Rs:699',
        shortDescription:
            'A racket is a piece of sports equipment used to hit a ball in games like tennis, squash, and badminton. It has an oval frame with strings stretched across and down it.',
        image: 'assets/images/racket_5.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    bool isFromMobile = Helper.isMobile(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo.shade50,
        appBar: AppBar(
          title: const TextHeadingWidget(text: "Borakay Shopping"),
          backgroundColor: Colors.blue,
        ),
        body: isFromMobile
            ? GridViewDynamicMobileWidget(productDetails: productDetails)
            : GridViewDynamicDesktopWidget(productDetails: productDetails),
      ),
    );
  }

  int calculateCrossAxisCount(double screenWidth, double desiredItemWidth) {
    return (screenWidth / desiredItemWidth).floor();
  }
}
