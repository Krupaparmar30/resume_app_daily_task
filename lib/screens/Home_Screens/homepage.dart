import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.teal,

      )

    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('Home Page'),
      //   systemOverlayStyle: SystemUiOverlayStyle(
      //     statusBarColor: Colors.teal,
      //     systemNavigationBarColor:Colors.teal,
      //   ),
      // ),
    );
  }
}
