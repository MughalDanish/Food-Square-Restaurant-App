import 'package:flutter/material.dart';

class OuterContainer extends StatelessWidget {
  final FoodCart foodCart;
  const OuterContainer({Key? key, required this .foodCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 265,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    SizedBox(height:80),
                    Text(foodCart.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Actor'),
                    ),
                    SizedBox(height: 15),
                    Text(
                      foodCart.ingredients,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Color(0xFFF9A9A9D)),
                    ),
                    SizedBox(height: 20),
                    Text(foodCart.price,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Color(0xFFFF5733), fontFamily: 'Actor-Regular'),
                    ),

                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(2, -325),
                child: InnerContainer(picture: foodCart.image),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InnerContainer extends StatelessWidget {
  final Image picture;
  const InnerContainer({Key? key, required this.picture}) : super(key: key);
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
          child: Image(image: picture,
            height:120,
            width:125,
            fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

class FoodCart {
  final String name;
  final Image image;
  final String ingredients;
  final String price;

  FoodCart({required this.name, required this.image, required this.ingredients, required this.price});
}
