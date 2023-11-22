import 'package:flutter/material.dart';
import 'package:food_square_restaurant_app/pages/promotion_page_2.dart';

class promotion_page_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60),
          Image.asset('assets/images/promotion_page_1_image.png',
            width: 410,
            height: 300,
            fit: BoxFit.cover
            ),
          Text(
            'Your Food Your Ways',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Color(0xFFFF5733)),

          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.\n Praesent id quam eu turpis.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Color(0xFFF9A9A9D)),
          ),
          SizedBox(height: 115),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: Color(0xFFFF5733),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 8),
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: Color(0xFFFD9D9D9),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          ElevatedButton(
            child: Text('Next',
            style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFF5733),
              minimumSize: Size(265, 55),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => promotion_page_2()),
              );
            },
          ),
          SizedBox(height: 70),
          Container(
            width: 245,
            height: 4,
            decoration: BoxDecoration(
              color: Color(0xFFFD9D9D9),
              borderRadius: BorderRadius.circular(6),
            ),
          )
        ],
      ),
    );
  }
}