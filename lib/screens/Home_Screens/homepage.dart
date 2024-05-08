import 'package:flutter/cupertino.dart';
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
      // DeviceOrientation.landscapeLeft,
      // DeviceOrientation.landscapeRight
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
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/drawer');
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Text('Drewer app'),
            ),
          )
        ],
      ),
    );
  }
}
