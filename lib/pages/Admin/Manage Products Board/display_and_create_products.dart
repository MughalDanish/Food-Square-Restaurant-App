import 'package:flutter/material.dart';
import 'package:food_square_restaurant_app/pages/FoodPages/FoodCartDesign.dart';

class DisplayProducts extends StatelessWidget {
  const DisplayProducts({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 600,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: FoodCartPage(),
      ),
    );
  }
}

class CreateProduct extends StatelessWidget {
  const CreateProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 550,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.only(top:20),
          child: Column(
            children: [
              CircleAvatar(
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
              SizedBox(height: 20),
              Container(
                height: 40,
                width: 300,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.black54,
                      width: 1
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.only(left:15),
                  child: Row(
                    children: [
                      Padding(padding:EdgeInsets.only(bottom:5),child: Image.asset('assets/images/name.png', width: 20, height: 20)), // Replace 'image.png' with your actual image path
                      SizedBox(width: 10), // Add spacing between the image and the TextFormField
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom:7),
                          child: TextFormField(
                            cursorColor: Colors.black54,
                            maxLength: 20,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                counterText: "",
                                hintText: 'enter recipe name',
                                border: InputBorder.none,
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54,
                                  fontFamily: 'Inter',
                                )
                            ),
                            obscureText: true,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'empty!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],

                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: 300,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: Colors.black54,
                        width: 1
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.only(left:15),
                  child: Row(
                    children: [
                      Padding(padding:EdgeInsets.only(bottom:5),child: Image.asset('assets/images/name.png', width: 20, height: 20)), // Replace 'image.png' with your actual image path
                      SizedBox(width: 10), // Add spacing between the image and the TextFormField
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 7),
                          child: TextFormField(
                            cursorColor: Colors.black54,
                            maxLength: 20,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                counterText: "",
                                hintText: 'enter price',
                                border: InputBorder.none,
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54,
                                  fontFamily: 'Inter',
                                )
                            ),
                            obscureText: true,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'empty!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],

                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                width: 300,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: Colors.black54,
                        width: 1
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.only(left:15),
                  child: Row(
                    children: [
                      Padding(padding:EdgeInsets.only(bottom:5),child: Image.asset('assets/images/name.png', width: 20, height: 20)), // Replace 'image.png' with your actual image path
                      SizedBox(width: 10), // Add spacing between the image and the TextFormField
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top:12),
                          child: TextFormField(
                            cursorColor: Colors.black54,
                            maxLength: 20,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                            //    counterText: "",
                                hintText: 'enter ingredients',
                                border: InputBorder.none,
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54,
                                  fontFamily: 'Inter',
                                )
                            ),
                            obscureText: true,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'empty!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 70),
              ElevatedButton(
                child: Text('Add Recipe',
                  style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFF5733),
                  minimumSize: Size(170, 45),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => promotion_page_2()),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
