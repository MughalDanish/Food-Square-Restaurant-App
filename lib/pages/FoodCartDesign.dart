import 'package:flutter/material.dart';

class OuterContainer extends StatelessWidget {
  final FoodCart foodCart;

  const OuterContainer({Key? key, required this.foodCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: 45),
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
                  foodCart.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Actor'),
                ),
                SizedBox(height: 15),
                Text(
                  foodCart.ingredients,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFF9A9A9D)),
                ),
                SizedBox(height: 15),
                Text(
                  foodCart.price,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFFF5733),
                      fontFamily: 'Actor-Regular'),
                ),
              ],
            ),
          ),
          Positioned(
            top: 1, // Adjust the top position as needed
            child: Hero(
              tag: 'bottomPart',
              child: CircleAvatar(
                radius: 55, // Adjust the height as needed
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage(
                      foodCart.image,
                    ),
                    height: 120,
                    width: 120,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class FoodCart {
  final String name;
  final String image;
  final String ingredients;
  final String price;

  FoodCart(
      {required this.name,
      required this.image,
      required this.ingredients,
      required this.price});
}

class FoodCartPage extends StatefulWidget {
  @override
  State<FoodCartPage> createState() => _FoodCartPageState();
}

class _FoodCartPageState extends State<FoodCartPage> {
  final List<FoodCart> foodCarts = [
    FoodCart(
        name: 'Veggie Tomato Mix',
        image: 'assets/images/food.jpg',
        ingredients:
        'A delicious and healthy mix of fresh vegetables and tomatoes, seasoned to perfection.',
        price: 'Rs,2002'),
    FoodCart(
        name: 'Veggie Fish Mix',
        image: 'assets/images/food.jpg',
        ingredients:
        'A tasty and nutritious mix of fresh vegetables and fish, cooked to perfection.',
        price: 'Rs,3000'),
    FoodCart(
        name: 'Veggie Tomato Mix',
        image: 'assets/images/food.jpg',
        ingredients:
        'A delicious and healthy mix of fresh vegetables and tomatoes, seasoned to perfection.',
        price: 'Rs,2002'),
    FoodCart(
        name: 'Veggie Fish Mix',
        image: 'assets/images/food.jpg',
        ingredients:
        'A tasty and nutritious mix of fresh vegetables and fish, cooked to perfection.',
        price: 'Rs,3000'),
    FoodCart(
        name: 'Veggie Tomato Mix',
        image: 'assets/images/food.jpg',
        ingredients:
        'A delicious and healthy mix of fresh vegetables and tomatoes, seasoned to perfection.',
        price: 'Rs,2002'),
    FoodCart(
        name: 'Veggie Fish Mix',
        image: 'assets/images/food.jpg',
        ingredients:
        'A tasty and nutritious mix of fresh vegetables and fish, cooked to perfection.',
        price: 'Rs,3000'),
    FoodCart(
        name: 'Veggie Tomato Mix',
        image: 'assets/images/food.jpg',
        ingredients:
        'A delicious and healthy mix of fresh vegetables and tomatoes, seasoned to perfection.',
        price: 'Rs,2002'),
    FoodCart(
        name: 'Veggie Fish Mix',
        image: 'assets/images/food.jpg',
        ingredients:
        'A tasty and nutritious mix of fresh vegetables and fish, cooked to perfection.',
        price: 'Rs,3000'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.60
                ),
                itemCount: foodCarts.length,
                itemBuilder: (context, index) {
                  return
                   OuterContainer(foodCart: foodCarts[index]
                    );
                },
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
              ),
         ),
    );
  }
}
