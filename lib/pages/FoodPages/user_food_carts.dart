import'package:flutter/material.dart';
import 'package:food_square_restaurant_app/config.dart';
import 'package:food_square_restaurant_app/pages/Admin/Manage%20Products%20Board/display_and_create_products.dart';
import 'FoodCartDesign.dart';
import 'detail_food_page.dart';


class FoodCartsDesign extends StatelessWidget {
  final FoodCart foodCart;

  const FoodCartsDesign({Key? key, required this.foodCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => DetailedFoodCart(foodId: foodCart.foodId,food_name: foodCart.name, food_image: foodCart.image, price: foodCart.price, ingredients: foodCart.ingredients)));
        },
        child: Stack(
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
                  Padding(
                    padding: EdgeInsets.only(left:30),
                    child: Row(
                      children: [
                        Text(
                          "Rs, " + foodCart.price.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFFFF5733),
                              fontFamily: 'Actor-Regular'),
                        ),
                        SizedBox(width: 10),
                        Text(
                          foodCart.discount.toString() + "% off",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Colors.red,
                              fontFamily: 'Actor-Regular'),
                        ),
                      ],
                    ),
                  )

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
                    child:
                    Image.memory(
                      foodCart.image,
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
      ),
    );
  }
}

class GridOfFoodCarts extends StatefulWidget {

  @override
  State<GridOfFoodCarts> createState() => _GridOfFoodCartsState();
}

List<FoodCart> food_carts = [];

class _GridOfFoodCartsState extends State<GridOfFoodCarts> {
  late Future<List<FoodCart>> foodCartFuture;
  @override
  void initState() {
    super.initState();
    foodCartFuture = getFoodItemsData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<FoodCart>>(
        future: foodCartFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Loading indicator while data is being fetched.
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            food_carts = snapshot.data ?? [];
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.60),
                itemCount: food_carts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: FoodCartsDesign(foodCart: food_carts[index]),
                  );
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            );
          }
        },
      ),
    );
  }
}



