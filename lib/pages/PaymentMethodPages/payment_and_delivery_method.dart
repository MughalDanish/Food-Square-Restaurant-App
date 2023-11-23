import 'package:flutter/material.dart';

class PaymentAndDelivery extends StatelessWidget {
  const PaymentAndDelivery({super.key});

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
              padding: EdgeInsets.only(left: 75),
              child: Text('Checkout',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54,
                      fontFamily: 'Inter')),
            )),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 167),
              child: Text('Payment',
                  style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontFamily: 'Inter')),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(right: 160),
              child: Text('Payment Method',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontFamily: 'Inter')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: EdgeInsets.only(left: 17, top: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RoundedCheckbox(
                            size: 15,
                            checkedColor: Color(0xFFFF5733),
                            onChanged: (bool value) {
                              // Handle checkbox state change
                              //print('Checkbox is checked: $value');
                            },
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFFFF5733),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Image(
                                image: AssetImage('assets/images/cardIcon.png'),
                                height: 20,
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Credit Card',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Inter'),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Padding(
                          padding: EdgeInsets.only(left: 30, right: 20),
                          child: Divider()),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          RoundedCheckbox(
                            size: 15,
                            checkedColor: Color(0xFFFF5733),
                            onChanged: (bool value) {
                              // Handle checkbox state change
                              //print('Checkbox is checked: $value');
                            },
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Image(
                                image: AssetImage(
                                    'assets/images/mobile_transfer.png'),
                                height: 20,
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Mobile Money(esaypaisa)',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Inter'),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Padding(
                          padding: EdgeInsets.only(left: 30, right: 20),
                          child: Divider()),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          RoundedCheckbox(
                            size: 15,
                            checkedColor: Color(0xFFFF5733),
                            onChanged: (bool value) {
                              // Handle checkbox state change
                              //print('Checkbox is checked: $value');
                            },
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0XFF0038FF),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Image(
                                image: AssetImage('assets/images/pay.png'),
                                height: 20,
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Pay on Delivery',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Inter'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.only(left: 35, right: 20),
                child: Divider()),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(right: 160),
              child: Text('Delivery Method',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontFamily: 'Inter')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                height: 110,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: EdgeInsets.only(left: 17, top: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RoundedCheckbox(
                            size: 15,
                            checkedColor: Color(0xFFFF5733),
                            onChanged: (bool value) {
                              // Handle checkbox state change
                              //print('Checkbox is checked: $value');
                            },
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Door delivery',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Inter'),
                          )
                        ],
                      ),
                      SizedBox(height: 7),
                      Padding(
                          padding: EdgeInsets.only(left: 30, right: 20),
                          child: Divider()),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          RoundedCheckbox(
                            size: 15,
                            checkedColor: Color(0xFFFF5733),
                            onChanged: (bool value) {
                              // Handle checkbox state change
                              //print('Checkbox is checked: $value');
                            },
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Pick up',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Inter'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 23, right:7),
              child: ListTile(
                leading: Text('Total',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: 'Inter')),
                trailing: Text('Rs, 5000',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: 'Inter')),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text(
                'Proceed to Payment',
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
        ));
  }
}

class RoundedCheckbox extends StatefulWidget {
  final double size;
  final Color checkedColor;
  final ValueChanged<bool>? onChanged;

  const RoundedCheckbox({
    Key? key,
    required this.size,
    required this.checkedColor,
    this.onChanged,
  }) : super(key: key);

  @override
  _RoundedCheckboxState createState() => _RoundedCheckboxState();
}

class _RoundedCheckboxState extends State<RoundedCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          if (widget.onChanged != null) {
            widget.onChanged!(isChecked);
          }
        });
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isChecked ? widget.checkedColor : Colors.grey,
          ),
          color: isChecked ? widget.checkedColor : Colors.white,
        ),
        child: Center(
          child: isChecked
              ? ImageIcon(
                  AssetImage('assets/images/checkBox.png'),
                  size: widget.size * 0.8,
                  color: Colors.white,
                )
              : null,
        ),
      ),
    );
  }
}
