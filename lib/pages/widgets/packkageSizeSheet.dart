import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class PackageSizeSheet extends StatefulWidget {
  @override
  _PackageSizeSheetState createState() => _PackageSizeSheetState();
}

class _PackageSizeSheetState extends State<PackageSizeSheet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 2.5.h),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 0.5.h,
                  width: 20.0.w,
                  decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(
                height: 2.0.h,
              ),
              Text(
                "Choose package size",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 10.0.sp),
              ),
              SizedBox(
                height: 3.0.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(
                            "assets/box1.svg",
                          ),
                          SizedBox(
                            height: 1.0.h,
                          ),
                          Text(
                            "small package",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 10.0.sp),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "assets/box2.svg",
                          ),
                          SizedBox(
                            height: 1.0.h,
                          ),
                          Text(
                            "medium package",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 10.0.sp),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "assets/box3.svg",
                          ),
                          SizedBox(
                            height: 1.0.h,
                          ),
                          Text(
                            "large package",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 10.0.sp),
                          ),
                        ],
                      ),
                    ]),
              )
            ]),
      ),
    );
  }
}
