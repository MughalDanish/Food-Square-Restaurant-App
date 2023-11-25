import 'package:flutter/material.dart';

import '../../Restaurant Tables/TableCart.dart';

class displayTables extends StatelessWidget {
  const displayTables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 600,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: TableCartsGrid(),
      ),
    );
  }
}
class Create_Update_Delete extends StatelessWidget {
  const Create_Update_Delete({super.key});

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
              Container(
                height: 210,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(image: AssetImage('assets/images/table1.jpg'),
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
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
                                hintText: 'enter table type',
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
                                hintText: 'enter table status',
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
                                hintText: 'enter table details',
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
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left:10),
                child: Row(
                  children: [
                    ElevatedButton(
                      child: Text('Update Recipe',
                        style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Reduce border radius
                        ),
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
                    SizedBox(width: 20),
                    ElevatedButton(
                      child: Text('Add Recipe',
                        style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Reduce border radius
                        ),
                        primary: Color(0XFF0038FF),
                        minimumSize: Size(170, 45),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => promotion_page_2()),
                        // );
                      },
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      child: Text('Delete Recipe',
                        style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Reduce border radius
                        ),
                        primary: Colors.deepPurpleAccent,
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
              )

            ],
          ),
        ),
      ),
    );
  }
}

