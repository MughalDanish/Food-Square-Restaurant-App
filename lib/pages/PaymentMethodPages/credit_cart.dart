import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class creditCartdetail extends StatefulWidget {
  const creditCartdetail({super.key});

  @override
  State<creditCartdetail> createState() => _creditCartdetailState();
}

class _creditCartdetailState extends State<creditCartdetail> {
  DateTime? selectedDate;
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate() async {
    final
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        _dateController.text = selectedDate!.toIso8601String();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    _dateController.text = selectedDate!.toIso8601String();
  }

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
          padding: EdgeInsets.only(left: 30),
          child: Text('Credit Card Info',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                  fontFamily: 'Inter')),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top:50),
        child: Column(
          children: [
            Container(
              height: 40,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6)
              ),
              child: Padding(
                padding: EdgeInsets.only(left:15),
                child: Row(
                  children: [
                    Image.asset('assets/images/cardNumber.png', width: 20, height: 20), // Replace 'image.png' with your actual image path
                    SizedBox(width: 10), // Add spacing between the image and the TextFormField
                    Expanded(
                      child: TextFormField(
                        cursorColor: Colors.black54,
                        maxLength: 14,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            counterText: "",
                            hintText: 'card number',
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
                  ],

                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 40,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6)
              ),
              child: Padding(
                padding: EdgeInsets.only(left:15),
                child: Row(
                  children: [
                    Padding(padding:EdgeInsets.only(bottom:5),child: Image.asset('assets/images/name.png', width: 20, height: 20)), // Replace 'image.png' with your actual image path
                    SizedBox(width: 10), // Add spacing between the image and the TextFormField
                    Expanded(
                      child: TextFormField(
                        cursorColor: Colors.black54,
                        maxLength: 20,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            counterText: "",
                            hintText: 'full name',
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
                  ],

                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left:30),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6), // Disable border
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top:6),
                            child: IconButton(icon: Image.asset('assets/images/date.png', width: 20, height: 20),
                            onPressed:
                              _selectDate,),
                          ), // Replace 'image.png' with your actual image path
                          Expanded(
                            child: TextFormField(
                              readOnly: true,
                              controller: _dateController,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: DateFormat('yyyy-MM-dd').format(selectedDate!),
                                  labelStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54,
                                    fontFamily: 'Inter',
                                  ),
                              ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  SizedBox(width: 30),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left:15),
                      child: Row(
                        children: [
                          Image.asset('assets/images/cvv.png', width: 18, height: 18), // Replace 'image.png' with your actual image path
                          SizedBox(width: 5), // Add spacing between the image and the TextFormField
                          Expanded(
                            child: TextFormField(
                              cursorColor: Colors.black54,
                              maxLength: 20,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                  counterText: "",
                                  hintText: 'cvv',
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
                        ],

                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              child: Text('Proceed to payment',
                style: TextStyle(color: Colors.white),),
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


