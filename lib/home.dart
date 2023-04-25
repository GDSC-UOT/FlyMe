

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flyme/aboutus.dart';
import 'package:flyme/complaint.dart';
import 'package:flyme/homescreen.dart';
import 'package:flyme/rate.dart';
import 'package:flyme/theme/color.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}
class _MyHomeState extends State<MyHome> {

  final  page=[
    const AboutUs(),
    const HomeScreen(),
    const ComplaintScreen(),
    const Rate()
  ];
  late int indexx=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(0),
        child: AppBar(backgroundColor: const Color(0xff7FDCD2),
          elevation: 0,
        ),),
      backgroundColor: Colors.white,
      body: page[indexx],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.transparent,
        color: primaryColor,
        items: <Widget>[
          getimage("assets/icons/st.png",Colors.black, 30,),
          getimage("assets/icons/home.png", Colors.black, 30,),
          getimage("assets/icons/man.png",Colors.black,30,),
          getimage("assets/icons/rate.png", Colors.black, 30,),
        ],
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            indexx=index;
          });
        },
      ),
    );
  }
Image getimage(String path,Color color,double size){
    return
      Image.asset(path,color: color,width: size,height: size,);
}

}
