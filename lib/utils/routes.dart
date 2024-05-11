







import 'dart:js';

import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/screens/Home_Screens/homepage.dart';
import 'package:resume_app_daily_task/screens/drawerscreen/drawer.dart';
import 'package:resume_app_daily_task/screens/google_email_password/details_page.dart';
import 'package:resume_app_daily_task/screens/google_email_password/email_password.dart';
import 'package:resume_app_daily_task/screens/google_email_password/last.dart';
import 'package:resume_app_daily_task/screens/google_email_password/password.dart';
import 'package:resume_app_daily_task/screens/google_email_password/verifctioin.dart';
import 'package:resume_app_daily_task/screens/login_screen/login_page.dart';
import 'package:resume_app_daily_task/screens/login_screen2/login_screen2.dart';

class AppRoutes{
  static Map <String, Widget Function(BuildContext)> routes={
    // '/':(context) => homePage(),
    // '/drawer':(context)=>drawerPage(),

    // '/':(context)=>loginPage(),
    // '/login2':(context)=>loginScreen(),
    '/':(context)=>googleEmailPasswordPage(),
    '/details':(context)=>detailsPage(),
    '/pass':(context)=>passwordPage(),
    '/var':(context)=>verifictioinPage(),
    '/last':(context)=>lastPage(),
  };
}