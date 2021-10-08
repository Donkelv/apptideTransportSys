import 'package:apptide/pages/const/bottomBarConst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _screenNumber;
  //FToast ftoast;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController _myPage = PageController(initialPage: 0);

  @override
  void initState() {
    _screenNumber = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.light,
        //statusBarColor: Colors.black
        statusBarColor: Colors.white,
      ),
      child: Scaffold(
        key: _scaffoldKey,
        body: PageView(
          controller: _myPage,
          onPageChanged: (int i) {
            _screenNumber = i;
          },
          children: widget.toList(),
          physics: NeverScrollableScrollPhysics(),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          color: Color(0xFFF1F1F1).withOpacity(0.5),
          child: Container(
            color: Colors.transparent,
            height: 10.0.h,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 1.0.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ink(
                      height: 8.0.h,
                      width: 8.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.5.h),
                      ),
                      child: InkWell(
                          borderRadius: BorderRadius.circular(3.5.h),
                          onTap: () {
                            setState(() {
                              _myPage.jumpToPage(0);
                            });
                          },
                          child: _screenNumber == 0
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.local_taxi,
                                      color: Color(0xFFB71C1C),
                                    ),
                                    SizedBox(
                                      height: 1.0.h,
                                    ),
                                    Text(
                                      "Ride",
                                      style: TextStyle(
                                        color: Color(0xFFB71C1C),
                                        fontSize: 12.0.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.local_taxi,
                                      color: Color(0xFFA5A5A4),
                                    ),
                                    SizedBox(
                                      height: 1.0.h,
                                    ),
                                    Text(
                                      "Ride",
                                      style: TextStyle(
                                        color: Color(0xFFA5A5A4),
                                        fontSize: 12.0.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ))),
                  Ink(
                      height: 7.0.h,
                      width: 7.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.5.h),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(3.5.h),
                        onTap: () {
                          setState(() {
                            _myPage.jumpToPage(1);
                          });
                        },
                        child: _screenNumber == 1
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/pickUp.svg",
                                    height: 2.5.h,
                                    color: Color(0xFFB71C1C),
                                  ),
                                  SizedBox(
                                    height: 1.0.h,
                                  ),
                                  Text(
                                    "Pick up",
                                    style: TextStyle(
                                      color: Color(0xFFB71C1C),
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/pickUp.svg",
                                    height: 2.5.h,
                                    color: Color(0xFFA5A5A4),
                                  ),
                                  SizedBox(
                                    height: 1.0.h,
                                  ),
                                  Text(
                                    "Pick up",
                                    style: TextStyle(
                                      color: Color(0xFFA5A5A4),
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                      )),
                  Ink(
                      height: 7.0.h,
                      width: 7.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.5.h),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(3.5.h),
                        onTap: () {
                          setState(() {
                            _myPage.jumpToPage(2);
                          });
                        },
                        child: _screenNumber == 2
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.history,
                                    color: Color(0xFFB71C1C),
                                  ),
                                  SizedBox(
                                    height: 1.0.h,
                                  ),
                                  Text(
                                    "History",
                                    style: TextStyle(
                                      color: Color(0xFFB71C1C),
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.history,
                                    color: Color(0xFFA5A5A4),
                                  ),
                                  SizedBox(
                                    height: 1.0.h,
                                  ),
                                  Text(
                                    "History",
                                    style: TextStyle(
                                      color: Color(0xFFA5A5A4),
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
