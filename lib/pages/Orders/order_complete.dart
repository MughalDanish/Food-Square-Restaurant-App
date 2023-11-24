import 'package:flutter/material.dart';

class OrdercompleteNotification extends StatelessWidget {
  const OrdercompleteNotification({super.key});

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
          padding: EdgeInsets.only(left: 95),
          child: Text('Order',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                  fontFamily: 'Actor')),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top:70),
        child: Center(
          child: Column(
            children: [
              Text('Order Complete',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
                color: Colors.black
              ),),
              Padding(
                padding: EdgeInsets.only(right:15),
                child: Image(image: AssetImage('assets/images/orderComplete.gif'),
                height: 300,
                width: 300,),
              ),
              Text('Thank you for Ordering',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: Colors.black
                ),),
              Text(' Your delivery will be in soon.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Inter',
                    color: Colors.black54
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
