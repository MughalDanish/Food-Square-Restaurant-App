import 'package:flutter/material.dart';
import 'package:food_square_restaurant_app/pages/promotion_page_1.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  Color _color1 = HexColor('#FA4A0C');
  Color _color2 = HexColor('#575757');

  @override
  void initState() {
    super.initState();

    // Wait for 3 seconds before navigating to the next page
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => promotion_page_1())); // Replace with your actual next page route
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/splashIcon.png",
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/food_square_logo.png",
                        width: 190,
                        height: 140,
                        fit: BoxFit.contain,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Food ',
                          style: TextStyle(
                              color: _color1,
                              fontSize: 32,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Square',
                                style: TextStyle(
                                  color: _color2,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Inter',
                                )),
                          ],
                        ),
                      ),
                      Text(
                        'World of Flavor',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: _color2,
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColor(String hex) {
    String formattedHex = "FF" + hex.toUpperCase().replaceAll("#", "");
    return int.parse(formattedHex, radix: 16);
  }

  HexColor(final String hex) : super(_getColor(hex));
}
