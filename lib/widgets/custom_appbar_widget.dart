import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  const CustomAppbarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: AppBar(
        foregroundColor: const Color(0xff444444),
        title: Text(
          title,
          style: TextStyle(fontSize: 18.sp, fontFamily: "Poppins"),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: const Color(0xff989898),
          size: 20.sp,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
