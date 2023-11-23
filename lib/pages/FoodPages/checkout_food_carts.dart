import 'package:flutter/material.dart';

class checkout_order_food_cart extends StatelessWidget {
  const checkout_order_food_cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0XFFF5F5F5),
          leading: IconButton(
            icon: Image(
                image: AssetImage('assets/images/icons.png'),
                height: 25,
                width: 20),
            onPressed: () {},
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 95),
            child: Text('Carts',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontFamily: 'Actor')),
          )),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left:90),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/click.png'),
                  height: 20,
                  width: 20),
                  Text(' Click to waste bin for delete',
                  style: TextStyle(fontSize: 12, fontFamily: 'Actor',
                  fontWeight: FontWeight.normal, color: Colors.black54),)
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 520,
              width: 350,
              child: OrderFoodCartsGrid(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text(
                'Complete Order',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFF5733),
                minimumSize: Size(265, 55),
              ),
              onPressed: (){
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => promotion_page_3()));
              },
            ),
          ],

        ),
      )
    );
  }
}

class orderCart extends StatelessWidget {
  const orderCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    radius: 35,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        image: AssetImage(
                          'assets/images/foodDish.jpg',
                        ),
                        height: 90,
                        width: 90,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.only(top:1),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Text('Tomato Veggie',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    fontFamily: 'Actor')),
                          ),
                          SizedBox(width: 60),
                          IconButton(
                            icon: Image(
                                image: AssetImage('assets/images/delete.png'),
                                height: 25,
                                width: 20),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 35),
                            child: Text('Rs, 2000',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFFFF5733),
                                    fontFamily: 'Actor')),
                          ),
                          Container(
                            height: 25,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Color(0xFFFF5733),
                                borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.only(right:5),
                            child: Row(
                              children: [
                                IconButton(icon: Image(image:AssetImage('assets/images/minus.png'),
                                  height: 15,
                                  width: 15,),
                                onPressed: (){

                                },),

                                Text('1', style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Actor')
                                ),

                                IconButton(icon: Image(image:AssetImage('assets/images/plus.png'),
                                height: 15,
                                width: 15,),
                                  onPressed: (){

                                  },),
                              ],
                            ),
                          ),
                          )

                        ],
                      )
                    ],
                  ),

                ),


              ],
            ),
          ),
      ),
    );
  }
}

class OrderFoodCartsGrid extends StatelessWidget {
  const OrderFoodCartsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              //crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 3.4
          ),
          itemCount: 3,
          itemBuilder: (context, index) {
            return
                Padding(padding: EdgeInsets.all(5.0),child: orderCart());
          },
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}

