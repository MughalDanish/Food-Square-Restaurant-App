import 'package:flutter/material.dart';

class tableDetailCart extends StatelessWidget {
  const tableDetailCart({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image(image: AssetImage('assets/images/table1.jpg'),
                  height: 300,
                  width: 390,
                  fit: BoxFit.cover,
                ),
                Hero(tag: 'leading Buttons',
                    child: ListTile(
                      leading: IconButton(
                          icon: Image(image:AssetImage('assets/images/icons.png'),
                            height: 25,
                            width: 20,
                            color: Colors.black54,),
                          onPressed: (){}
                      ),
                      trailing: IconButton(
                          icon: Image(image:AssetImage('assets/images/favorite.png'),
                            height: 25,
                            width: 20,
                            color: Colors.black54,),
                          onPressed: (){}
                      ),
                    ))
              ],
            ),
           SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(right: 180),
              child: Text('Ocean Breeze',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                color: Color(0xFFFF5733)
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right:276),
              child: Text('Available',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.normal,
                    color: Colors.black54
                ),),
            ),
            Padding(
              padding: EdgeInsets.only(left:8),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/star.png'),
                    height: 18,
                    width: 18,),
                  SizedBox(width: 5),
                  Text('4.5',style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Inter',
                      color: Colors.black54
                  ),),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left:10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Container clicked!");
                    },
                    child:  Container(
                      height:25,
                      width:60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Colors.black26,
                              width: 1.0
                          )
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left:6),
                        child: Row(
                          children: [
                            Text('Date',
                              style: TextStyle(fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color:
                                  Colors.black54),),
                            SizedBox(width:3),
                            Image(image: AssetImage('assets/images/date.png'),
                              height: 15,
                              width: 15,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height:30,
                    width:170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: Colors.black26,
                            width: 1.0
                        )
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left:6),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("Container clicked!");
                            },
                            child:  Image(image: AssetImage('assets/images/borderMinus.png'),
                              height: 20,
                              width: 20,)
                          ),

                          SizedBox(width: 22),
                          Text('5 Guests',
                              style: TextStyle(fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color:
                                  Colors.black54)
                          ),
                          SizedBox(width: 22),
                          GestureDetector(
                            onTap: () {
                              print("Container clicked!");
                            },
                            child:  Image(image: AssetImage('assets/images/borderPlus.png'),
                                height: 23,
                                width: 24)
                          )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      print("Container clicked!");
                    },
                    child:  Container(
                      height:25,
                      width:60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Colors.black26,
                              width: 1.0
                          )
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left:6),
                        child: Row(
                          children: [
                            Text('Time',
                              style: TextStyle(fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color:
                                  Colors.black54),),
                            SizedBox(width:3),
                            Image(image: AssetImage('assets/images/time.png'),
                              height: 17,
                              width: 17,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(right:207),
                child: TabBar(
                  tabs: [
                    Tab(text: 'Details'),
                    Tab(text: 'Reviews'),
                  ],
                  labelPadding: EdgeInsets.symmetric(horizontal: 10), // Adjust padding as needed
                  labelColor: Color(0xFFFF5733), // Set the color of the selected tab label
                  unselectedLabelColor: Colors.black54, // Set the color of unselected tab labels
                  indicatorColor: Color(0xFFFF5733), // Set the color of the tab indicator
                  indicatorWeight: 3, // Set the thickness of the tab indicator
                  indicatorSize: TabBarIndicatorSize.label,
                  //indicatorPadding: EdgeInsets.symmetric(horizontal: 1), // Adjust padding as needed
                  labelStyle: TextStyle(fontSize: 16), // Adjust font size as needed
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie mi consectetur molestie vestibulum. Duis vestibulum, justo nec tincidunt tincidunt, dui enim elementum nunc, interdum vehicula ex ligula id quam. Pellentesque nec mi id neque dignissim accumsan. In hac habitasse platea dictumst',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black54),),
                  ),
                  Center(child: Text('More Content')),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                child: Text(
                  'Book Your Table',
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
            ),
          ],
        ),
      ),
    );
  }
}
