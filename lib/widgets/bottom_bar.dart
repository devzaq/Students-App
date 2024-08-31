import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  late List<Map<String, Object>> _pages;
  int currentIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        // 'page': Home(),
      },
      {
        // 'page': Feeds(),
      },
      {
        // 'page': Search(),
      },
      {
        // 'page': Cart(),
      },
      {
        // 'page': UserInfo(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 69.h,
      shape: const CircularNotchedRectangle(),
      notchMargin: 15.r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  width: 30.26.w,
                  height: 36.65.h,
                  "assets/Attendance.png",
                  color: 0 == currentIndex
                      ? const Color(0xff1F79A4)
                      : Colors.black,
                ),
                const Text(
                  "Attendence",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Image.asset("assets/Attendance.png"),
          SizedBox(width: 90.w),
          Image.asset("assets/Attendance.png"),
          Image.asset("assets/Attendance.png"),
        ],
      ),
    );
  }
}
