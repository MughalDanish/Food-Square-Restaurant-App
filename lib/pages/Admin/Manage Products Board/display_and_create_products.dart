import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:food_square_restaurant_app/config.dart';
import 'package:food_square_restaurant_app/pages/FoodPages/FoodCartDesign.dart';

import '../DashBoard Content/admin_panel.dart';

//Variable to store previous data of table data
String food_name = "";
String food_ingredients = "";
int food_price = 0;
int food_discount = 0;

// Text editing controller to control the text input of table detail
final food_name_controller = TextEditingController();
final food_ingredients_controller = TextEditingController();
final food_price_controller = TextEditingController();
final food_discount_controller = TextEditingController();
var food_image;

// get integer value from string
int getIntegerValueFromString(String text) {
  RegExp regExp = RegExp(r'\d+');
  Iterable<RegExpMatch> matches = regExp.allMatches(text);
// Extract the first match and convert it to an integer
  int price = matches.isNotEmpty ? int.parse(matches.first.group(0)!) : 0;
  return price;
}

// get old values before updating
void SetFieldValues(FoodCart foodCart) {
  food_name = food_name_controller.text;
  food_ingredients = food_ingredients_controller.text;
  food_price = getIntegerValueFromString(food_price_controller.text);
  food_discount = getIntegerValueFromString(food_discount_controller.text);

  food_name_controller.text = foodCart.name;
  food_ingredients_controller.text = foodCart.ingredients;
  food_price_controller.text = "Rs, " + foodCart.price.toString();
  food_discount_controller.text = foodCart.discount.toString() + "%";
  food_image = base64.encode(foodCart.image);
}

// Clear field values
void dispose() {
  food_name_controller.clear();
  food_ingredients_controller.clear();
  food_discount_controller.clear();
}

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

// Design of Food Cart

class FoodCartDesign extends StatelessWidget {
  final FoodCart foodCart;

  const FoodCartDesign({Key? key, required this.foodCart}) : super(key: key);

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
    );
  }
}

// create product by picking it picture from computer

class CreateProduct extends StatefulWidget {
  const CreateProduct({super.key});

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  final _formKey = GlobalKey<FormState>();
  String? _base64Image;

  /// Function to Pick Image from PC/Gallery
  PlatformFile? _imageFile;

  /// Method to pick and display an image file
  Future<void> _pickImage() async {
    try {
      // Pick an image file using file_picker package
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );
      // If user cancels the picker, do nothing
      if (result == null) return;
      // If user picks an image, update the state with the new image file
      setState(() {
        _imageFile = result.files.first;
      });
      food_image = Uint8List.fromList(_imageFile!.bytes!);
      _base64Image = base64.encode(Uint8List.fromList(_imageFile!.bytes!));
    } catch (e) {
      messageToShow(e.toString());
    }
  }

  ///Api Call to add data to mongoose Database.
  Future<void> addFoodItemsDetail() async {
    var addTableBody = {
      "food_name": food_name_controller.text,
      "food_ingredients": food_ingredients_controller.text,
      "food_price": getIntegerValueFromString(food_price_controller.text),
      "food_discount": getIntegerValueFromString(food_discount_controller.text),
      "food_image": _base64Image
    };
    var response = await http.post(
      Uri.parse(addFoodItems),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode(addTableBody),
    );
    print(response.body);
    messageToShow(response.body);
    var jsonResponse = jsonDecode(response.body);

    print(jsonResponse);
    if (jsonResponse['status']) {
      messageToShow('Data added Succesfully');
      dispose();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AdminPanel(state: 'Product')),
      );
    } else {
      messageToShow(
          'Error in adding data, might be server error try again later!');
    }
  }

  ///API call for update food item data
  Future<void> updateFoodItemsDetail(String id) async {
    messageToShow(id);
    String updateAddress = updateFoodItems + id;
    var addTableBody = {
      "food_name": food_name_controller.text,
      "food_ingredients": food_ingredients_controller.text,
      "food_price": getIntegerValueFromString(food_price_controller.text),
      "food_discount": getIntegerValueFromString(food_discount_controller.text),
      "food_image": food_image
    };
    var response = await http.put(Uri.parse(updateAddress),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(addTableBody));
    var jsonResponse = jsonDecode(response.body);
    if (jsonResponse['status']) {
      messageToShow('Data Updated Successfully');
      dispose();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AdminPanel(state: 'Product')),
      );
    } else {
      messageToShow('Server error! Please try again later.');
    }
  }

  ///API call for delete Food Item data
  Future<void> deleteFoodItemData(String id) async {
    String deleteAddress = deleteFoodItems + id;
    var response = await http.delete(Uri.parse(deleteAddress));
    var jsonResponse = jsonDecode(response.body);
    if (jsonResponse['status']) {
      messageToShow('Data Deleted Successfully');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AdminPanel(state: 'Product')),
      );
    } else {
      messageToShow('Server error! Please try again later.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 550,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _pickImage();
                  },
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white24,
                        radius: 125,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(120),
                          child: _imageFile == null || food_image == null
                              ? Container()
                              : Image.memory(food_image,
                                  height: 245, width: 245, fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        right: 5,
                        child: Hero(
                            tag: 'GalleryIcons',
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 20,
                              //backgroundImage: AssetImage('assets/images/Gallery_Icon.png'),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/Gallery_Icon.png'),
                                fit: BoxFit.cover,
                                color: Colors.black54,
                              ),
                            )),
                      )
                    ],
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
                      border: Border.all(color: Colors.black54, width: 1)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Image.asset('assets/images/name.png',
                                width: 20, height: 20)),
                        // Replace 'image.png' with your actual image path
                        SizedBox(width: 10),
                        // Add spacing between the image and the TextFormField
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 7),
                            child: TextFormField(
                              controller: food_name_controller,
                              cursorColor: Colors.black54,
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
                                  )),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'please enter name!';
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
                      border: Border.all(color: Colors.black54, width: 1)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Image.asset('assets/images/name.png',
                                width: 20, height: 20)),
                        // Replace 'image.png' with your actual image path
                        SizedBox(width: 10),
                        // Add spacing between the image and the TextFormField
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 7),
                            child: TextFormField(
                              controller: food_price_controller,
                              cursorColor: Colors.black54,
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
                                  )),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'please enter price!';
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
                      border: Border.all(color: Colors.black54, width: 1)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Image.asset('assets/images/name.png',
                                width: 20, height: 20)),
                        // Replace 'image.png' with your actual image path
                        SizedBox(width: 10),
                        // Add spacing between the image and the TextFormField
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 7),
                            child: TextFormField(
                              controller: food_discount_controller,
                              cursorColor: Colors.black54,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                  counterText: "",
                                  hintText: 'enter discount',
                                  border: InputBorder.none,
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black54,
                                    fontFamily: 'Inter',
                                  )),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'please enter the discount!';
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
                      border: Border.all(color: Colors.black54, width: 1)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Image.asset('assets/images/name.png',
                                width: 20, height: 20)),
                        // Replace 'image.png' with your actual image path
                        SizedBox(width: 10),
                        // Add spacing between the image and the TextFormField
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: TextFormField(
                              controller: food_ingredients_controller,
                              cursorColor: Colors.black54,
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
                                  )),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'please enter ingredients!';
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
                SizedBox(height: 80),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      ElevatedButton(
                          child: Text(
                            'Update Recipe',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Reduce border radius
                            ),
                            primary: Color(0xFFFF5733),
                            minimumSize: Size(170, 45),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              String id = getId(food_name, food_ingredients,
                                  food_price, food_discount);
                              updateFoodItemsDetail(id);
                            }
                          }),
                      SizedBox(width: 20),
                      ElevatedButton(
                        child: Text(
                          'Add Recipe',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Reduce border radius
                          ),
                          primary: Color(0XFF0038FF),
                          minimumSize: Size(170, 45),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            addFoodItemsDetail();
                          }
                        },
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                          child: Text(
                            'Delete Recipe',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Reduce border radius
                            ),
                            primary: Colors.deepPurpleAccent,
                            minimumSize: Size(170, 45),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              String id = getId(
                                  food_name_controller.text,
                                  food_ingredients_controller.text,
                                  getIntegerValueFromString(
                                      food_price_controller.text),
                                  getIntegerValueFromString(
                                      food_discount_controller.text));
                              deleteFoodItemData(id);
                            }
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
