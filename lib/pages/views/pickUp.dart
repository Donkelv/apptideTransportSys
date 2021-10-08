import 'package:apptide/pages/const/bottomSheet.dart';
import 'package:apptide/pages/widgets/packkageSizeSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class PickUpScreeen extends StatefulWidget {
  @override
  _PickUpScreeenState createState() => _PickUpScreeenState();
}

class _PickUpScreeenState extends State<PickUpScreeen> {
  bool clickBookNow;
  @override
  void initState() {
    clickBookNow = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Color(0xffB71C1C),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: Color(0xffB71C1C),
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        title: Text(
          "Web Drive",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 15.0.sp,
          ),
        ),
      ),
      body: InkWell(
        onTap: () {
          // setState(() {
          //   clickBookNow = false;
          // });
        },
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/map.png",
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                child: Column(
                  children: [
                    Container(
                      //height: 25.0.h,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Color(0xFFB71C1C).withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.0.w, vertical: 2.5.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 1.0.h,
                            ),
                            Form(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    //color: Colors.white,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Pick up location",
                                        hintStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.32),
                                          fontSize: 12.0.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        alignLabelWithHint: true,
                                        prefixIcon: Icon(
                                          Icons.location_on,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                        suffixIcon: Icon(
                                          Icons.location_searching_outlined,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.0.h,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    //color: Colors.white,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Destination",
                                        hintStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.32),
                                          fontSize: 12.0.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        alignLabelWithHint: true,
                                        prefixIcon: SvgPicture.asset(
                                          "assets/destination.svg",
                                          height: 2.0.h,
                                          width: 2.0.h,
                                          fit: BoxFit.scaleDown,
                                        ),
                                        // suffixIcon: Icon(Icons.location_searching_outlined, color: Colors.black.withOpacity(0.6),),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.5.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        clickBookNow = true;
                                      });
                                      //Sheet().packageSizeSheet(context);
                                    },
                                    child: Container(
                                      width: size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Text(
                                            "Book Now",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0.sp,
                                            ),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: size.width * 0.95,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Schedule",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFB71C1C),
                                fontSize: 14.0.sp,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: clickBookNow,
                replacement: SizedBox(height: 0.0),
                child: Positioned(
                  bottom: 0.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          icon: Icon(Icons.cancel, color: Colors.black),
                          onPressed: () {
                            setState(() {
                              clickBookNow = false;
                            });
                          }),
                      PackageSizeSheet(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
