import 'package:createnew/constants/today_constants.dart';
import 'package:createnew/widgets/custom_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  int _selectedDate = 27;
  final ScrollController _controller =
      ScrollController(initialScrollOffset: 27 * 42.w);

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    color: const Color(0xff989898),
                    iconSize: 35.sp,
                    onPressed: () {},
                    icon: const Icon(Icons.date_range_rounded)),
                Row(
                  children: [
                    const Icon(
                      Icons.keyboard_arrow_left,
                      color: Color(0xff989898),
                    ),
                    Text(
                      "March",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 24.sp,
                          color: const Color(0xff989898),
                          fontFamily: "Poppins"),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xff989898),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 12.h),
            SizedBox(
              height: 62.h,
              width: double.infinity,
              child: ListView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: 31,
                itemBuilder: (context, index) {
                  final date = index % 7;
                  final day = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedDate = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: _selectedDate == index
                              ? const Color(0xff1F79A4)
                              : null,
                          borderRadius: BorderRadius.circular(10)),
                      width: 42.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            day[date],
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: _selectedDate == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                          Text(
                            index.toString(),
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: _selectedDate == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            size: 32,
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          Text(
                            "Today",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.cases_outlined))
                  ],
                ),
                ListView.builder(
                  // padding: const EdgeInsets.all(0),
                  itemCount: TodayConstantsData.data.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final data = TodayConstantsData.data.elementAt(index);
                    return ListTile(
                      visualDensity: const VisualDensity(vertical: 3),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.r),
                      shape: const CircleBorder(),
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            data.image,
                            height: 40.r,
                            width: 40.r,
                          ),
                          Text(
                            data.track,
                            style: const TextStyle(color: Color(0xff378C7D)),
                          )
                        ],
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data.title),
                          Text(
                            data.subTitle,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ],
                      ),
                      subtitle: SizedBox(
                        width: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              data.completed,
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            LinearProgressIndicator(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green,
                              backgroundColor: Colors.grey,
                              value: data.completedBy,
                            )
                          ],
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              data.subImage,
                              height: 26.r,
                              width: 44.r,
                            ),
                            Text(
                              data.date,
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 40.h, right: 0),
        child: FloatingActionButton.extended(
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
          ),
        ),
      ),
    );
  }
}
