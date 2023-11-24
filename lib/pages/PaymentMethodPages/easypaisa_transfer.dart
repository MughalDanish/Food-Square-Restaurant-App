import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EasypaisaTransfer extends StatefulWidget {
  const EasypaisaTransfer({super.key});

  @override
  State<EasypaisaTransfer> createState() => _EasypaisaTransfer();
}

class _EasypaisaTransfer extends State<EasypaisaTransfer> {
  final phone_no_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFF5F5F5),
        leading: IconButton(
            icon: Image(
              image: AssetImage('assets/images/icons.png'),
              height: 25,
              width: 20,
            ),
            onPressed: () {}),
        title: Padding(
          padding: EdgeInsets.only(left: 17),
          child: Text('Easypaisa Transfer',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                  fontFamily: 'Inter')),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50, left:30),
        child: Column(
          children: [
            Container(
              height: 40,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Image.asset('assets/images/cardNumber.png',
                        width: 20, height: 20),
                    // Replace 'image.png' with your actual image path
                    SizedBox(width: 10),
                    // Add spacing between the image and the TextFormField
                    Expanded(
                      child: TextFormField(
                        cursorColor: Colors.black54,
                        maxLength: 14,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            counterText: "",
                            hintText: 'enter phone number',
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
                            return 'empty!';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              child: Text(
                'Proceed to payment',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFF5733),
                minimumSize: Size(265, 55),
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
    );
  }
}
