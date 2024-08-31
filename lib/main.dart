import 'package:createnew/screens/happenings_screen.dart';
import 'package:createnew/screens/tasks_screen.dart';
import 'package:createnew/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 2;

  List<Widget> screens = [
    const Scaffold(
      body: SafeArea(
        child: Center(child: Text("Attendence")),
      ),
    ),
    const TasksScreen(),
    const HappeningsScreen(),
    const Scaffold(
      body: SafeArea(
        child: Center(child: Text("Claim")),
      ),
    ),
    const Scaffold(
      body: SafeArea(
        child: Center(child: Text("Leave")),
      ),
    ),
  ];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: CustomBottomBar(
        onClicked: onClicked,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 65.h,
        height: 65.r,
        child: FittedBox(
          child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {
              onClicked(2);
            },
            child: Image.asset("assets/Valluva.png"),
          ),
        ),
      ),
    );
  }
}
