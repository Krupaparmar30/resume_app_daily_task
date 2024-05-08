

import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/screens/Home_Screens/homepage.dart';
import 'package:resume_app_daily_task/screens/drawerscreen/drawer.dart';

class AppRoutes{
  static Map <String, Widget Function(BuildContext)> routes={
    '/':(context) => homePage(),
    '/drawer':(context)=>drawerPage(),
  };
}