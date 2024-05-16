import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(

         children: [
           Stack(
            children: [
              Container(
                height: 756,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,

                ),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 180),
                        child: Container(
                          width: 500,
                          height: 300,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/Smart healthcare!.jpg',
                                )
                              )
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 200,
                        width:500,
                        decoration: BoxDecoration(
                          color:Colors.white,

                        ),
                        child: Column(
                          children: [
                            Text('Build Awesome Apps',style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),)
                            ,
                            Text('Lets put your creativity on the',style: TextStyle(color: Colors.black,fontSize: 16,),)
                            ,Text('development highway. \n',style: TextStyle(color: Colors.black,fontSize: 16,),),
                            Row(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 35),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed('/login2');
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 130,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.black,width: 2)
                                        ),
                                        child: Center(child: Text('Login',style: TextStyle(fontSize: 22,color: Colors.white),)),
                                      ),
                                    ),

                                  ),
                                ), Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Container(
                                      height: 50,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          color:Color(0xffffe401),
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.black,width: 2)
                                      ),
                                      child: Center(child: Text('sign up',style: TextStyle(fontSize: 22),)),

                                    ),
                                  ),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
           )
         ],
       ),
    );
  }
}
