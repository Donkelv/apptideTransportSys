import 'package:apptide/pages/const/historySheetConst.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HistorySheet extends StatefulWidget {
  @override
  _HistorySheetState createState() => _HistorySheetState();
}

class _HistorySheetState extends State<HistorySheet> {
  PageController _myPage = PageController(initialPage: 0);
  int _screenNumber;
  @override
  void initState() {
    _screenNumber = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 30.0.h,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.0.w,
          vertical: 2.5.h,
        ),
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
              height: 4.0.h,
            ),
            Container(
              width: size.width,
              height: 8.0.h,
              child: PageView(
                controller: _myPage,
                onPageChanged: (int i) {
                  _screenNumber = i;
                },
                physics: BouncingScrollPhysics(),
                children: historySheetConst.map((e) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 1.0.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e["title"],
                                    style: TextStyle(
                                      color: Color(0xFFB71C1C),
                                      fontSize: 15.0.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.0.h,
                                  ),
                                  Text(
                                    e["price"],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                e["image"],
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFFC4C4C4),
                                  ),
                                  onPressed: () {
                                    _myPage.nextPage(
                                        duration: Duration(milliseconds: 1000),
                                        curve: Curves.easeIn);
                                  }),
                            ]),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 2.0.h,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: historySheetConst.map((e) {
                  return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.0.w),
                      child: CircleAvatar(
                        radius: 1.0.w,
                        backgroundColor: Color(0xFFC4C4C4),
                      ));
                }).toList()),
            SizedBox(
              height: 2.0.h,
            ),
            InkWell(
              onTap: () {
                //Sheet().packageSizeSheet(context);
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0)),
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
      ),
    );
  }
}
