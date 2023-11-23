import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

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
              child: Text('Profile',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54,
                      fontFamily: 'Inter')),
            )),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 23, right:7),
              child: ListTile(
                leading: Text('Profile Detail',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: 'Inter')),
                trailing: IconButton(
                  icon: Image(
                    image: AssetImage('assets/images/edit.png'),
                    height: 25,
                      width: 25,
                  ),
                  onPressed: (){

                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, bottom:5),
              child: Container(
                height: 170,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:40),
                      child: Image(image : AssetImage('assets/images/profile.png'),
                      height: 80,
                      width: 70,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:3, top:27),
                      child: Column(
                        children: [
                          Text('Muhammad Danish',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontFamily: 'Inter')
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:15),
                            child: Text('dnmughal54321@gmail.com',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black54,
                                    fontFamily: 'Inter')
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.only(left:15),
                            child: Container(
                              height: 1,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFD9D9D9),
                                  borderRadius: BorderRadius.circular(6)
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.only(right:60),
                            child: Text('+923147535843',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black54,
                                    fontFamily: 'Inter')
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:15),
                            child: Container(
                              height: 1,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFD9D9D9),
                                  borderRadius: BorderRadius.circular(6)
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:18),
                            child: Text('QuaideAzam Hall, Uet Lahore',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black54,
                                    fontFamily: 'Inter')
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ),
            ),
            SizedBox(height: 5),
            Padding(
                padding: EdgeInsets.only(left: 35, right: 20),
                child: Divider()),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left:8),
                      child: ListTile(
                        leading: Text('Orders',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Inter')
                        ),
                        trailing: IconButton(
                          icon: Image(
                            image: AssetImage('assets/images/next.png'),
                            height: 18,
                            width: 18,
                          ),
                          onPressed: (){

                          },
                        ),
                      ),
                    ),
                  ),
                ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left:8),
                    child: ListTile(
                      leading: Text('Favorites',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: 'Inter')
                      ),
                      trailing: IconButton(
                        icon: Image(
                          image: AssetImage('assets/images/next.png'),
                          height: 18,
                          width: 18,
                        ),
                        onPressed: (){

                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left:8),
                    child: ListTile(
                      leading: Text('Payment Methods',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: 'Inter')
                      ),
                      trailing: IconButton(
                        icon: Image(
                          image: AssetImage('assets/images/next.png'),
                          height: 18,
                          width: 18,
                        ),
                        onPressed: (){

                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left:8),
                    child: ListTile(
                      leading: Text('Help',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: 'Inter')
                      ),
                      trailing: IconButton(
                        icon: Image(
                          image: AssetImage('assets/images/next.png'),
                          height: 18,
                          width: 18,
                        ),
                        onPressed: (){

                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 44),
            ElevatedButton(
              child: Text(
                'Change Password',
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
