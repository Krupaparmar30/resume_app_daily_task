









import 'dart:js';

import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/screens/Home_Screens/homepage.dart';
import 'package:resume_app_daily_task/screens/Redio_cheakbox/redio_cheakbox.dart';
import 'package:resume_app_daily_task/screens/drawerscreen/drawer.dart';
import 'package:resume_app_daily_task/screens/google_email_password/details_page.dart';
import 'package:resume_app_daily_task/screens/google_email_password/email_password.dart';
import 'package:resume_app_daily_task/screens/google_email_password/last.dart';
import 'package:resume_app_daily_task/screens/google_email_password/password.dart';
import 'package:resume_app_daily_task/screens/google_email_password/verifctioin.dart';
import 'package:resume_app_daily_task/screens/image_picker/images_piker.dart';
import 'package:resume_app_daily_task/screens/login_screen/login_page.dart';
import 'package:resume_app_daily_task/screens/login_screen2/login_screen2.dart';
import 'package:resume_app_daily_task/screens/snekbar/snekbar.dart';

class AppRoutes{
  static Map <String, Widget Function(BuildContext)> routes={
    // '/':(context) => homePage(),
    // '/drawer':(context)=>drawerPage(),


     //todo - login pages
    // '/':(context)=>loginPage(),
    // '/login2':(context)=>loginScreen(),


    //todo - google_email_password_verificatioin_pages
    // '/':(context)=>googleEmailPasswordPage(),
    // '/details':(context)=>detailsPage(),
    // '/pass':(context)=>passwordPage(),
    // '/var':(context)=>verifictioinPage(),
    // '/last':(context)=>lastPage(),

    //todo - sneckbar_pages
    // '/':(context)=>snekbarPage(),

 //todo - image_picker
   // '/':(context)=>imagepickerPage(),

    //todo - redioCheakboxPage

    '/':(context)=>redioCheakboxPage(),
  };
}