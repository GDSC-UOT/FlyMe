import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flyme/home.dart';
import 'package:flyme/theme/color.dart';

class WelcomeUsUs extends StatefulWidget{
  const WelcomeUsUs({Key? key}) : super(key: key);

  @override
  State<WelcomeUsUs> createState() => _WelcomeUsUsState();
}

class _WelcomeUsUsState extends State<WelcomeUsUs> {
  late int first=1;
  late TextEditingController age=TextEditingController();
  late TextEditingController city=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      age.text="The Age";
      city.text="City";
    });
    super.initState();
  }


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
          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 25,right: 25),
            padding: const EdgeInsets.only(left: 5,right: 5,top: 0,bottom: 0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              border: Border.all(color:  primaryColor),
            ),
            child:TextFormField(
              controller: age,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 18),
              decoration: const InputDecoration(
                  labelText: "",
                  hintText: "The Age",
                  hintStyle: TextStyle(fontSize:18,color: Colors.black),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(5)
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 25,right: 25),
            padding: const EdgeInsets.only(left: 5,right: 5,top: 0,bottom: 0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              border: Border.all(color:  primaryColor),
            ),
            child:TextFormField(
              textAlign: TextAlign.justify,
              controller: city,
              style: const TextStyle(fontSize: 18),
              decoration: const InputDecoration(
                  labelText: "",
                  hintText: "The Age",
                  hintStyle: TextStyle(fontSize:18,color: Colors.black),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(5)
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
    Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.04,right: MediaQuery.of(context).size.height*0.04,top: 5,bottom: 5),
      child:
    Text("Have you experienced violence in your life?",style: TextStyle(color: Colors.black ,fontSize: 18,fontWeight: FontWeight.bold),),
    ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Container(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.02,right: MediaQuery.of(context).size.height*0.02),
            child: Row(children: [
            Radio(
              value: 0,
              groupValue: first,
              onChanged: (v){
                if(v!=null){
                  setState(() {
                    first=v;
                  });
                }
              },
            ),
            Text("Yes"),
            SizedBox(width: 10,),
            Radio(
              value: 1,
              groupValue: first,
              onChanged: (v){
                if(v!=null){
                  setState(() {
                    first=v;
                  });
                }
              },
            ),
            Text("No"),
            SizedBox(width: 10,),

          ],),),

          SizedBox(height:MediaQuery.of(context).size.height*0.02,),
          Container(
            height: MediaQuery.of(context).size.height*0.06,
            width: MediaQuery.of(context).size.width*0.8,
            child:
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHome()));
              },
              child: const Text("Next",style: TextStyle(color: Colors.black ,fontSize: 18,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(shape: const StadiumBorder(),
                backgroundColor:const Color(0xff74D2E1),
              ),

            ),
          ),
        ],
      )
    );
  }
}
