import 'package:flutter/material.dart';

class HappeningsScreen extends StatefulWidget {
  const HappeningsScreen({super.key});

  @override
  State<HappeningsScreen> createState() => _HappeningsScreenState();
}

class _HappeningsScreenState extends State<HappeningsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text("Happenings"),
      ),
    );
  }
}
