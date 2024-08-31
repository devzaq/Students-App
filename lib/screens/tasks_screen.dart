import 'package:createnew/widgets/custom_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(
        title: "Task",
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.inbox)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
        ],
      ),
      body: const SafeArea(
        child: Center(child: Text("Task List")),
      ),
      floatingActionButton: FloatingActionButton.extended(
          extendedPadding:
              EdgeInsets.symmetric(horizontal: 12.r, vertical: 6.r),
          backgroundColor: const Color(0xff839AE8),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          onPressed: () {},
          label: Row(
            children: [
              const Text(
                "Add Task",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(width: 7.w),
              Icon(
                Icons.add_circle,
                size: 36.r,
                color: Colors.white,
              ),
            ],
          )),
    );
  }
}
