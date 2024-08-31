import 'package:createnew/widgets/custom_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HappeningsScreen extends StatefulWidget {
  const HappeningsScreen({super.key});

  @override
  State<HappeningsScreen> createState() => _HappeningsScreenState();
}

class _HappeningsScreenState extends State<HappeningsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbarWidget(
        title: "Happenings",
      ),
      body: const SafeArea(
        child: Center(child: Text("Happenings")),
      ),
      floatingActionButton: SizedBox(
        height: 77,
        width: 79,
        child: FloatingActionButton(
            backgroundColor: const Color(0xff839AE8),
            shape: const CircleBorder(),
            onPressed: () {},
            child: Image.asset(width: 27.r, height: 27.r, "assets/note.png")),
      ),
    );
  }
}
