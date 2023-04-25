import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flyme/theme/color.dart';
import 'package:flyme/welcome.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late Timer _timer;
  @override
  void initState() {
    // TODO: implement initState
    _timer=Timer.periodic(Duration(seconds: 3), (timer) {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()));
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset("assets/images/image2.jpg",height:  MediaQuery.of(context).size.height*0.35, width:  MediaQuery.of(context).size.height*0.35,)
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.002,),
          Text("fly me",style: TextStyle(color: primaryColor ,fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          CircularProgressIndicator(
            color: primaryColor,
            semanticsLabel:"1",
          )
        ],
      ),

    );
  }
}
