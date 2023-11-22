import 'package:flutter/material.dart';
import 'package:food_square_restaurant_app/pages/Authuntication/registration_page.dart';
import 'package:food_square_restaurant_app/pages/FoodPages/home_page.dart';
import 'package:food_square_restaurant_app/pages/NavigationMenu/navigation_menu.dart';
import 'package:food_square_restaurant_app/pages/FoodCartDesign.dart';
import 'package:food_square_restaurant_app/pages/promotion_page_1.dart';
import 'package:food_square_restaurant_app/pages/promotion_page_2.dart';
import 'package:food_square_restaurant_app/pages/promotion_page_3.dart';
import 'package:food_square_restaurant_app/pages/splash_screen.dart';
import 'package:food_square_restaurant_app/pages/hello.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(background: Color(0XFFF5F5F5))
       ),
      home: NavigationMenuBar(),
    );
  }
}
