import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const CustomAppbarWidget({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    var icon = const Icon(Icons.arrow_back_ios);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: AppBar(
        foregroundColor: const Color(0xff444444),
        title: Text(
          title,
          style: TextStyle(fontSize: 18.sp, fontFamily: "Poppins"),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: icon,
          color: const Color(0xff989898),
        ),
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
