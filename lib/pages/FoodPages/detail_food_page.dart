import 'package:flutter/material.dart';

class DetailedFoodCart extends StatelessWidget {
  const DetailedFoodCart({super.key});

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
        actions: <Widget>[
          IconButton(
            icon: Image(
                image: AssetImage('assets/images/favorite.png'),
                height: 20,
                width: 20),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 125,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Image(
                    image: AssetImage('assets/images/foodDish.jpg'),
                    height: 245,
                    width: 245,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: Color(0xFFFD9D9D9), shape: BoxShape.circle),
              ),
              SizedBox(width: 8),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: Color(0xFFFF5733), shape: BoxShape.circle),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/timer.png',
                height: 20,
                width: 20,
              ),
              Text('50mint',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontFamily: 'Actor')),
              SizedBox(width: 80),
              Image.asset(
                'assets/images/star.png',
                height: 20,
                width: 20,
              ),
              Text('4.5',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontFamily: 'Actor')),
              SizedBox(width: 80),
              Image.asset(
                'assets/images/fire.png',
                height: 20,
                width: 20,
              ),
              Text('Kcal',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontFamily: 'Actor')),
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: Text('Tomato Veggie',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontFamily: 'Actor')),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text('Delivery Info',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontFamily: 'Actor')),
                  ),
                  SizedBox(width: 140),
                  Text('Rs, 2800',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFFFF5733),
                          fontFamily: 'Actor')),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right:45),
                child: Text('Delivered between monday aug and thursday\n20 from 8pm to 91:32 pm',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                        fontFamily: 'Actor')),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(right:200),
                child: Text('Ingredients',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontFamily: 'Actor')),
              ),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Praesent id quam eu turpis        . ',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54,
                      fontFamily: 'Actor')),
              SizedBox(height: 40),
              ElevatedButton(
                child: Text(
                  'Add to Cart',
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
          )
        ],
      ),
    );
  }
}
