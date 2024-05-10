import 'package:flutter/material.dart';

class verifictioinPage extends StatefulWidget {
  const verifictioinPage({super.key});

  @override
  State<verifictioinPage> createState() => _verifictioinPageState();
}

class _verifictioinPageState extends State<verifictioinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 500,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.circular(20)
                           ,boxShadow: [
                             BoxShadow(
                               color: Colors.grey,offset: Offset(0,2),
                               blurRadius: 2
                                 ,spreadRadius: 2
                             )
                    ]
                    ),
                    child: Column(
                      children: [
                        Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(text: 'G',style: TextStyle(color: Colors.blue,fontSize: 28)),
                                  TextSpan(text: 'o',style: TextStyle(color: Colors.red,fontSize: 28)),
                                  TextSpan(text: 'o',style: TextStyle(color: Colors.amber,fontSize: 28)),
                                  TextSpan(text: 'g',style: TextStyle(color: Colors.blue,fontSize: 28)),
                                  TextSpan(text: 'l',style: TextStyle(color: Colors.green,fontSize: 28)),
                                  TextSpan(text: 'e\n',style: TextStyle(color: Colors.red,fontSize: 28))





                                ]
                            )
                        ),
                        Text('2-Step Verification',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                        Text(" This extra step shows it's really you trying to sign in",style: TextStyle(fontSize: 16,),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0,2)
                                )
                            ]
                            ),
                            child: Row(
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Icon(Icons.account_circle_outlined),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90),
                                  child: DropdownButton(value:dp,



                                  items:[
                                    DropdownMenuItem(child: Text('krupa@3011'),value: 0,),
                                    DropdownMenuItem(child: Text('krupa2@3011'),value: 1,),
                                    DropdownMenuItem(child: Text('krishnaa@32321'),value: 2,)
                                  ], onChanged: (value) {
                                    setState(() {
                                      dp=value!;
                                    });
                                  },
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width:100,
                            decoration: BoxDecoration(
                                color: Colors.pink,image: DecorationImage(
                                    fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/mo.png'
                                )
                            )
                            ),










                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 160,bottom: 5),
                          child: Text('Check your Google Pixel 2',style: TextStyle(fontSize: 14,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35,bottom: 5),
                          child: Text("Google sent a notification to your Google Pixel 2.Tap Yes on the notification to continue.",style: TextStyle(fontSize: 14,),),
                        ),Padding(
                          padding: const EdgeInsets.only(left: 35,bottom: 5),
                          child: Text("Or open the Gmail app on your Apple iPad mini (5th generation) to sign in from there.",style: TextStyle(fontSize: 14,),),
                        ),

                        Row(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30,top: 10),
                                child: ElevatedButton(onPressed: () {
                                setState(() {
                                  Navigator.of(context).pushNamed('/last');

                                });
                                }, child: Icon(Icons.verified)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 30),
                              child: Text("Don't ask again on this device"),
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),

    );
  }
}
int dp=0;