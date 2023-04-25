import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flyme/welcomeus.dart';

class Welcome extends StatefulWidget{
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(0),
    child: AppBar(backgroundColor: const Color(0xff7FDCD2),
    elevation: 0,
    ),),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(children:[ SvgPicture.asset("assets/icons/img1.svg"),]),
          SizedBox(height: MediaQuery.of(context).size.height*0.009,),
          Image.asset("assets/images/image1.jpg",height: MediaQuery.of(context).size.height*0.35, width: MediaQuery.of(context).size.height*0.35,),


          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //    Image.asset("image/image1.jpg",height: 215, width: 215,)
          //    Image.asset("image/image2.jpg",height: 215, width: 215,)
          // ],






          // Row(
          // children: <Widget>[
          // Expanded(child: Image.asset("image/image2.jpg",height: 215, width: 215, ))
          //
          // ],
          // ),
          SizedBox(height: MediaQuery.of(context).size.height*0.002,),
          const Text("Fly Me",style: TextStyle(color: Colors.black ,fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height:MediaQuery.of(context).size.height*0.02,),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
            child: const Text("Every thing is forgettable but bad childhood \nmemories will stay within us to the end",style: TextStyle(color: Colors.black ,fontSize: 21,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height:MediaQuery.of(context).size.height*0.02,),
          Container(
            height: MediaQuery.of(context).size.height*0.06,
            width: MediaQuery.of(context).size.width*0.8,
            child:
            ElevatedButton(
              onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const WelcomeUsUs()));
              },
              style: ElevatedButton.styleFrom(shape: const StadiumBorder(),
                backgroundColor:const Color(0xff74D2E1),
              ),
              child: const Text("Get Started",style: TextStyle(color: Colors.black ,fontSize: 18,fontWeight: FontWeight.bold),),

            ),
          ),
        ],
      )
    );
  }
}
