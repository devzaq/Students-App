import 'package:createnew/widgets/custom_appbar_widget.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
