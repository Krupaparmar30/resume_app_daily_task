import 'package:flutter/material.dart';

class lastPage extends StatefulWidget {
  const lastPage({super.key});

  @override
  State<lastPage> createState() => _lastPageState();
}

class _lastPageState extends State<lastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/lo.jpg'
                    )
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0,2),
                      blurRadius: 2,
                      spreadRadius: 2,
                    )
                  ]

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
