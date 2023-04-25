import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flyme/theme/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List title = [
    "Counseling",
    "Donations",
    "Complaint",
    "Movies",
    "Courses",
    "Books"
  ];
  late List imgs = [
    SvgPicture.asset("assets/icons/comment.svg"),
    SvgPicture.asset("assets/icons/folder_open.svg"),
    SvgPicture.asset("assets/icons/security.svg"),
    SvgPicture.asset("assets/icons/laptop_windows.svg"),
    SvgPicture.asset("assets/icons/inbox.svg"),
    SvgPicture.asset("assets/icons/import_contacts.svg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: const Color(0xff7FDCD2),
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(children: [
            SvgPicture.asset("assets/icons/img1.svg"),
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              transform: Matrix4.translationValues(
                  -MediaQuery.of(context).size.height*0.08,
                  MediaQuery.of(context).size.height * 0.05,
                  0),
              child: const Text(
                "Home",textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          Center(
            child: Container(
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height * 0.3,
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.0325),
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              spreadRadius: 0,
                              blurRadius: 1,
                              offset: const Offset(
                                  0, 0.5), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.height * 0.021),
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height * 0.02),
                        child: Row(
                          children: [
                            Text(
                              title[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            imgs[index]
                          ],
                        ),
                      );
                    })),
          ),
        ],
      )),
    );
  }
}
