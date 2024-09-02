import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomBar extends StatefulWidget {
  final ValueChanged<int> onClicked;
  const CustomBottomBar({
    super.key,
    required this.onClicked,
  });

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsets.zero,
      height: 69.h,
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      notchMargin: 15.r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              currentIndex = 0;
              widget.onClicked(0);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  width: 30.26.w,
                  height: 36.65.h,
                  "assets/Attendance.png",
                  color: 0 == currentIndex
                      ? const Color(0xff1F79A4)
                      : Colors.black45,
                ),
                const Text(
                  "Attendence",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              currentIndex = 1;
              widget.onClicked(1);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  width: 35.72.w,
                  height: 22.44.h,
                  "assets/Project.png",
                  color: 1 == currentIndex
                      ? const Color(0xff1F79A4)
                      : Colors.black45,
                ),
                const Text(
                  "Tasks",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          SizedBox(width: 60.w),
          InkWell(
            onTap: () {
              currentIndex = 3;
              widget.onClicked(3);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  width: 30.26.w,
                  height: 36.65.h,
                  "assets/Expenses.png",
                  color: 3 == currentIndex
                      ? const Color(0xff1F79A4)
                      : Colors.black45,
                ),
                const Text(
                  "Claim",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              currentIndex = 4;
              widget.onClicked(4);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  width: 30.26.w,
                  height: 36.65.h,
                  "assets/Leave.png",
                  color: 4 == currentIndex
                      ? const Color(0xff1F79A4)
                      : Colors.black45,
                ),
                const Text(
                  "Leave",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
