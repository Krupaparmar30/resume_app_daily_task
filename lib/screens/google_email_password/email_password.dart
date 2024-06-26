import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_app_daily_task/utils/globle.dart';

class googleEmailPasswordPage extends StatefulWidget {
  const googleEmailPasswordPage({super.key});

  @override
  State<googleEmailPasswordPage> createState() => _googleEmailPasswordPageState();
}
GlobalKey<FormState>fromkey=GlobalKey();

TextEditingController txtEmail=TextEditingController();
class _googleEmailPasswordPageState extends State<googleEmailPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:fromkey,
        child: Column(
          children: [
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Container(
                      height: 310,
                      width: 620,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 85),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(image: AssetImage(
                                          'assets/images/go.jpg'
                                      )

                                      )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2, right: 30),
                                child: Text('Sign up', style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2, left: 20),
                                child: Text('Use Your Google Account',
                                  style: TextStyle(fontSize: 12),),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 75, left: 30),
                                child: Container(
                                  height: 230,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column(
                                    children: [
                                      TextFormField(

                                      onChanged: (value) {
                                        setState(() {
                                          email=value;
                                        });
                                      },
                                        validator: (value) {
                                          if(value!.isEmpty)
                                            {
                                              return 'field must be requried!';
                                            }
                                          else if(value.length<=8 )
                                            {
                                              return 'value should be more than 8';
                                            }
                                          else if(!value.contains('@gmail.com'))
                                            {
                                              return 'field the @gmail.com';
                                            }
                                          else if(value.toString()=='gmail.com')
                                            {
                                              return 'enter @';
                                            }


                                        },
                                        controller: txtEmail,
                                        style: TextStyle(height: 1),
                                        decoration: InputDecoration(


                                            labelText: 'Email Or Phone',

                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black
                                              ),

                                              borderRadius: BorderRadius.circular(
                                                  10),


                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black
                                              ),
                                              borderRadius: BorderRadius.circular(
                                                  10),

                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 2

                                              ),
                                              borderRadius: BorderRadius.circular(
                                                  10),

                                            )
                                        ),

                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 2,left: 280),
                                        child: Text('Forget Email?',style: TextStyle(color: Colors.blue.shade900),),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:2),
                                        child: Text.rich(
                                          TextSpan(
                                            children:[
                                              TextSpan(text:'Not your computer?Use Guest mode to sign in privately.',style: TextStyle(
                                                fontSize: 12
                                              )
                                              ),
                                            TextSpan(text:'Learn more',style: TextStyle(color: Colors.blue.shade900,fontSize: 12))

                                                ]

                                          )
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,

                                        children: [

                                          Container(
                                            height: 50,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10)
                                                  ,color: Colors.white
                                            ),
                                            child: Center(child: Text('create acoount',style: TextStyle(color: Colors.blue.shade900),)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20,top: 2),
                                            child: GestureDetector(
                                              onTap: () {
                                                bool responce=fromkey.currentState!.validate();
                                                if(responce)
                                                  {
                                                    email=txtEmail.text;
                                                    Navigator.of(context).pushNamed('/pass');

                                                  }



                                              },
                                              child: Container(
                                                height: 50,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(30)
                                                    ,color: Colors.blue.shade900
                                                ),
                                                child: Center(child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 18),)),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      GestureDetector(onTap: () {
                                        email=txtEmail.text;
                                        Navigator.of(context).pushNamed('/details');
                                      },child: Padding(
                                        padding: const EdgeInsets.only(left: 50),
                                        child: Text('Show Details',style: TextStyle(color: Colors.blue.shade900),),
                                      ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
