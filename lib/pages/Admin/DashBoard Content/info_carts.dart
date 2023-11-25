import 'package:flutter/material.dart';

class InformationCarts extends StatelessWidget {
  const InformationCarts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top:30, left:25),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CartDecoration(image: 'assets/images/sales.png', name: 'Total Sales', price: 'Rs, 2999999.909', boxColor: Colors.pinkAccent),
              SizedBox(width:80),
              CartDecoration(image: 'assets/images/sales.png', name: 'Total Sales', price: 'Rs, 2999999.909', boxColor: Color(0xFFFF5733)),
              SizedBox(width:80),
              CartDecoration(image: 'assets/images/sales.png', name: 'Total Sales', price: 'Rs, 2999999.909', boxColor: Color(0XFF0038FF)),
              SizedBox(width:80),
              CartDecoration(image: 'assets/images/sales.png', name: 'Total Sales', price: 'Rs, 2999999.909', boxColor: Colors.deepPurpleAccent),
            ],
          ),
        ),
      ),
    );
  }

  CartDecoration({
    required String name,
    required String image,
    required String price,
    required Color boxColor,
  }) {
    return  Container(
      height: 100,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7)
      ),
      child: Padding(
        padding: EdgeInsets.only(left:15),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: boxColor,
                  shape: BoxShape.circle),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  height: 30,
                  width: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right:50),
                    child: Text(name,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                          fontFamily: 'Inter'),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(price,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Inter'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
