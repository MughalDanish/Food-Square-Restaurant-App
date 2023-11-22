import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:food_square_restaurant_app/config.dart';
import 'package:html/parser.dart';


class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  double height_space_of_fields = 10.0;
  Color first_name_label_color = Colors.black54;
  Color last_name_label_color = Colors.black54;
  Color email_label_color = Colors.black54;
  Color phone_label_color = Colors.black54;
  Color password_label_color = Colors.black54;
  Color confirm_password_label_color = Colors.black54;
  var _inputText = '';
  Color appBarColor = Colors.white;
  void registerUser() async{
    var regUserBody = {
      "first_name": _firstNameController.text,
      "last_name": _lastNameController.text,
      "email": _emailController.text,
      "phone_no": _phoneController.text,
      "password":_passwordController.text,
      "confirm_password": _confirmPasswordController.text
    };
    var response  = await http.post(Uri.parse(registration),
    headers:{"Content-Type":"application/json"},
    body: jsonEncode(regUserBody),
    );
    var jsonResponse = jsonDecode(response.body);
    if(jsonResponse['status']){
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(
        content: Text('Registration successful!'),
      ));
    }
    else{
      // Show a success message
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(
        content: Text('Server Error try again!'),
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          automaticallyImplyLeading: false,
          title: RichText(
            text: TextSpan(
              text: 'Let\'s get you started\n',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: Color(0XFF000000),
                fontFamily: 'Inter',
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Exploring tastes begins here',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54),
                )
              ],
            ),
          ),
        ),
        body: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification is ScrollNotification) {
                if (notification.metrics.pixels > 0.0) {
                  setState(() {
                    appBarColor = Colors.white;
                  });
                } else {
                  setState(() {
                    appBarColor = Colors.white;
                  });
                }
              }
              return true;
            },
            child: SingleChildScrollView(
                child: Padding(
                    padding:
                        EdgeInsets.only(left: 35.0, right: 35.0, top: 30.0),
                    child: Form(
                        key: _formKey,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                cursorColor: Colors.black,
                                controller: _firstNameController,
                                decoration: InputDecoration(
                                  labelText: 'First Name',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54, width: 1.0),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: first_name_label_color),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your first name.';
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  setState(() {
                                    _inputText = text;
                                    if (_inputText.isNotEmpty) {
                                      first_name_label_color =
                                          Colors.black54;
                                    } else {
                                      first_name_label_color = Colors.black54;
                                    }
                                  });
                                },
                              ),
                              SizedBox(height: height_space_of_fields),
                              TextFormField(
                                cursorColor: Colors.black,
                                controller: _lastNameController,
                                decoration: InputDecoration(
                                  labelText: 'Last Name',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54, width: 1.0),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: last_name_label_color),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your last name.';
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  setState(() {
                                    _inputText = text;
                                    if (_inputText.isNotEmpty) {
                                      last_name_label_color = Colors.black54;
                                    } else {
                                      last_name_label_color = Colors.black54;
                                    }
                                  });
                                },
                              ),
                              SizedBox(height: height_space_of_fields),
                              TextFormField(
                                cursorColor: Colors.black,
                                controller: _emailController,
                                decoration: InputDecoration(
                                  labelText: 'Email address',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54, width: 1.0),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: email_label_color),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email address.';
                                  } else if (!RegExp(
                                          r'^.+@[a-zA-Z]+\.[a-zA-Z]+$')
                                      .hasMatch(value)) {
                                    return 'Please enter a valid email address.';
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  setState(() {
                                    _inputText = text;
                                    if (_inputText.isNotEmpty) {
                                      email_label_color = Colors.black54;
                                    } else {
                                      email_label_color = Colors.black54;
                                    }
                                  });
                                },
                              ),
                              SizedBox(height: height_space_of_fields),
                              TextFormField(
                                cursorColor: Colors.black,
                                controller: _phoneController,
                                decoration: InputDecoration(
                                  labelText: 'Phone No',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54, width: 1.0),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: phone_label_color),
                                ),
                                keyboardType: TextInputType.phone,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your phone number.';
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  setState(() {
                                    _inputText = text;
                                    if (_inputText.isNotEmpty) {
                                      phone_label_color = Colors.black54;
                                    } else {
                                      phone_label_color = Colors.black54;
                                    }
                                  });
                                },
                              ),
                              SizedBox(height: height_space_of_fields),
                              TextFormField(
                                cursorColor: Colors.black,
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54, width: 1.0),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: password_label_color),
                                ),
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a password.';
                                  } else if (value.length < 6) {
                                    return 'Password must be at least 6 characters long.';
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  setState(() {
                                    _inputText = text;
                                    if (_inputText.isNotEmpty) {
                                      password_label_color = Colors.black54;
                                    } else {
                                      password_label_color = Colors.black54;
                                    }
                                  });
                                },
                              ),
                              SizedBox(height: height_space_of_fields),
                              TextFormField(
                                cursorColor: Colors.black,
                                controller: _confirmPasswordController,
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54, width: 1.0),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: confirm_password_label_color),
                                ),
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please confirm your password.';
                                  } else if (value !=
                                      _passwordController.text) {
                                    return 'Passwords do not match.';
                                  }
                                  return null;
                                },
                                onChanged: (text) {
                                  setState(() {
                                    _inputText = text;
                                    if (_inputText.isNotEmpty) {
                                      confirm_password_label_color =
                                          Colors.black54;
                                    } else {
                                      confirm_password_label_color =
                                          Colors.black54;
                                    }
                                  });
                                },
                              ),
                              SizedBox(height: 60.0),
                              Padding(
                                padding: EdgeInsets.only(left:10),
                                child: ElevatedButton(
                                  child: Text(
                                    'Register',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFFF5733),
                                    minimumSize: Size(265, 55),
                                  ),
                                  onPressed: () {

                                    if (_formKey.currentState!.validate()) {
                                     registerUser();
                                    }
                                  },
                                ),

                              ),
                              SizedBox(height: 20.0),
                              Padding(
                                padding: EdgeInsets.only(left:40.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Already have an account?',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black54,
                                      fontFamily: 'Inter',
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Sign In',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFFF5733)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]))))));
  }
}
