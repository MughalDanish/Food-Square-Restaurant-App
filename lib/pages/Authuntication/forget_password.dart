import 'package:flutter/material.dart';

class OTPVerification extends StatelessWidget {
  OTPVerification({super.key});
  final _formKey = GlobalKey<FormState>();
  final first_digit_contoroller = TextEditingController();
  final second_digit_contoroller = TextEditingController();
  final third_digit_contoroller = TextEditingController();
  final fourth_digit_contoroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFF5F5F5),
        leading: IconButton(
            icon: Image(image: AssetImage('assets/images/icons.png'),
              height: 25,
              width: 20,),
            onPressed: (){
            }
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text('Forget Passcode',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                  fontFamily: 'Inter')),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top:60),
          child: Column(
            children: [
              Text('Verification',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: Colors.black
                ),),
              Text('We sent an OTP to your registered email.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Inter',
                    color: Colors.black54
                ),),
              SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.only(left:60),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: TextFormField(
                          cursorColor: Colors.black54,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              counterText: "",
                            border: InputBorder.none,
                            labelStyle: TextStyle(
                              fontSize: 39,
                              fontWeight: FontWeight.w600,
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
                      )
                      ,SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: TextFormField(
                          cursorColor: Colors.black54,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              counterText: "",
                              border: InputBorder.none,
                              labelStyle: TextStyle(
                                fontSize: 39,
                                fontWeight: FontWeight.w600,
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
                      SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: TextFormField(
                          cursorColor: Colors.black54,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              counterText: "",
                              border: InputBorder.none,
                              labelStyle: TextStyle(
                                fontSize: 39,
                                fontWeight: FontWeight.w600,
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
                      SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: TextFormField(
                          cursorColor: Colors.black54,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              counterText: "",
                              border: InputBorder.none,
                              labelStyle: TextStyle(
                                fontSize: 39,
                                fontWeight: FontWeight.w600,
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
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                child: Text('Verify',
                  style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFF5733),
                  minimumSize: Size(120, 40),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(
                      content: Text('Verification Complete!'),
                    ));
                  }
                },
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left:65),
                child: Row(
                  children: [
                    Text('Did\'nt you receive any code?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54
                    ),),
                    Text('Resend',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFF5733)
                      ),),

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
