import 'package:flutter/material.dart';

class SearchFood extends StatelessWidget {
  const SearchFood({super.key});

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
          padding: EdgeInsets.only(left: 60),
          child: Text('Search Food',
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
              Padding(
                padding: EdgeInsets.only(left:10),
                child: Image(image: AssetImage('assets/images/Notfound.gif'),
                  height: 300,
                  width: 300,),
              ),
              Text('Item not Found',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: Colors.black
                ),),
              Text('Try searching the item with a \ndifferent keyword.',
                textAlign: TextAlign.center,
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
