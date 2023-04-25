import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flyme/theme/color.dart';

class ComplaintScreen extends StatefulWidget {
  const ComplaintScreen({Key? key}) : super(key: key);

  @override
  State<ComplaintScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  late List colors=[Colors.black,primaryColor,primaryColor,primaryColor,Colors.black];
  late List title=["From the map","Or wrote it in detail?","Age of Kid","Number of Kids","Put guides if you had"];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(0),
        child: AppBar(backgroundColor: const Color(0xff7FDCD2),
          elevation: 0,
        ),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child:Column(
              children: [
                Row(children:[ SvgPicture.asset("assets/icons/img1.svg"),

                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    transform: Matrix4.translationValues(
                        -MediaQuery.of(context).size.height*0.08,
                        MediaQuery.of(context).size.height*0.05, 0),
                    child: const Text("Complaint",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),]),
                SizedBox(height:MediaQuery.of(context).size.height*0.01,),
Center(child:
                Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.02),
                    height:MediaQuery.of(context).size.height*0.65,
                    child:
                ListView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: colors[index]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1.5,
                              blurRadius: 1,
                              offset: const Offset(0, 0.25),  // changes position of shadow
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.021),
                        margin: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
                        child: Row(
                          children: [
                            Text(title[index]),
                          ],
                        ),
                      );
                    })
                ),
),
              ]
          )


      ),
    );
  }
}
