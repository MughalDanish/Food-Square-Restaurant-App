import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 180,
            height: 245,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                SizedBox(height: 80),
                Text(
                  'Veggie tomato mix',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Actor'),
                ),
                SizedBox(height: 15),
                Text(
                  'sagdfdnfbfdjf dhfd dfghdsgf hjgfhdfhds',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFF9A9A9D)),
                ),
                SizedBox(height: 20),
                Text(
                  'Rs, 2000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFFF5733),
                      fontFamily: 'Actor-Regular'),
                ),
              ],
            ),
          ),
          Positioned(
            top: -50, // Adjust the top position as needed
            child: Hero(
              tag: 'bottomPart',
              child: CircleAvatar(
                radius: 60, // Adjust the height as needed
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage(
                      'assets/images/food.jpg',
                    ),
                    height: 120,
                    width: 120,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class InnerContainer extends StatelessWidget {
  const InnerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0XFFE0E0E0),
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white54,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image(
            image: AssetImage(
              'assets/images/food.jpg',
            ),
            height: 120,
            width: 125,
            fit: BoxFit.cover,
          ),
          // height:120,
          // width:125,
          // fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
