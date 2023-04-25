import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(0),
        child: AppBar(backgroundColor: const Color(0xff7FDCD2),
          elevation: 0,
        ),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children:[ SvgPicture.asset("assets/icons/img1.svg"),
                Container(

                    width: MediaQuery.of(context).size.width*0.5,
                    transform: Matrix4.translationValues(
                        -MediaQuery.of(context).size.height*0.08,
                       MediaQuery.of(context).size.height*0.05, 0),
                  child: const Text("About US",textAlign:TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                ),
              ]),

              SizedBox(height:MediaQuery.of(context).size.height*0.02,),
              Container(

                padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
                child: const Text("We are an application that cares about the psychological and physical safety of the child, because children are everything we have And if we want to make our future great, we must start with them, together to reduce and get rid of domestic violence, which is one of the biggest problems in our world.",textAlign: TextAlign.center,style: TextStyle(color: Colors.black ,fontSize: 21,fontWeight: FontWeight.normal),),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*0.02,),
              Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.8,
                child:
                ElevatedButton(
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const WelcomeUsUs()));
                  },
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder(),
                    backgroundColor:const Color(0xff74D2E1),
                  ),
                  child: const Text("Contact Us",style: TextStyle(color: Colors.black ,fontSize: 18,fontWeight: FontWeight.normal),),

                ),
              ),

            ],)

      ),
    );
  }
}
