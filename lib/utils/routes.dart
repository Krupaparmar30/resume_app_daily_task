import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/screens/Home_Screens/homepage.dart';

class AppRoutes{
  static Map <String, Widget Function(BuildContext)> routes={
    '/':(context) => homePage(),
  };
}