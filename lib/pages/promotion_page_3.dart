import 'package:flutter/material.dart';

import 'Authuntication/login_page.dart';
import 'Authuntication/registration_page.dart';

class promotion_page_3 extends StatelessWidget {
  const promotion_page_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60),
          Image.asset(
            'assets/images/promotion_page_3_gif.gif',
            width: 370,
            height: 290,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'You’re Almost There',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF5733)),
          ),
          SizedBox(height: 10),
          Text(
            'Welcome to your gateways for\ndelightful cooking adventures,\n just one click away.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Color(0xFFF9A9A9D)),
          ),
          SizedBox(height: 60),
          ElevatedButton(
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFF5733),
              minimumSize: Size(265, 55),
            ),
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> loginPage()));
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text(
              'Register',
              style: TextStyle(color: Color(0xFFFF5733)),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // Set background color to transparent
              minimumSize: Size(265, 55),
              side: BorderSide(
                  width: 2,
                  color:
                      Color(0xFFFF5733)), // Add a border with the desired color
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()));
              // Handle button press here
            },
          ),
          SizedBox(height: 50),
          Container(
            height: 4,
            width: 245,
            decoration: BoxDecoration(
                color: Color(0xFFFD9D9D9),
                borderRadius: BorderRadius.circular(6)),
          )
        ],
      ),
    );
  }
}
