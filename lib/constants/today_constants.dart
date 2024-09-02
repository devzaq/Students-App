import 'package:flutter/material.dart';

class TodayConstants {
  final String image;
  final String subImage;
  final String title;
  final String subTitle;
  final String completed;
  final String track;
  final String date;
  final double completedBy;

  TodayConstants({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.completed,
    required this.track,
    required this.subImage,
    required this.date,
    required this.completedBy,
  });
}

class TodayConstantsData {
  static final List<TodayConstants> data = [
    TodayConstants(
      image: "assets/today/umbrella.png",
      subImage: "assets/today/group.png",
      title: "Home Page Developement",
      subTitle: "Global App",
      completed: "45%",
      track: "On Track",
      date: "Apr-16",
      completedBy: 0.45,
    ),
    TodayConstants(
      image: "assets/today/plane.png",
      subImage: "assets/today/group.png",
      title: "Home Page Developement",
      subTitle: "Global App",
      completed: "25%",
      track: "On Track",
      date: "Apr-16",
      completedBy: 0.25,
    ),
    TodayConstants(
      image: "assets/today/globe.png",
      subImage: "assets/today/group.png",
      title: "Home Page Developement",
      subTitle: "Global App",
      completed: "75%",
      track: "On Track",
      date: "Apr-16",
      completedBy: 0.75,
    ),
  ];
}
