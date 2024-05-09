import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}
TextEditingController txtEmail=TextEditingController();
TextEditingController txtPassword=TextEditingController();

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(right: 100,top: 10),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.pink,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/Smart healthcare!.jpg',
                  )
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80,top: 10),
            child: Text('Welcome Back,',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 32),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('Make it work,make it right,make it fast,',style: TextStyle(color: Colors.black,fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:  Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),


                ),
                label: Text('E-mail'),
                prefixIcon: const Icon(Icons.person),
                  focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(
                      color:  Colors.black,
                    ),
                  ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:  Colors.black,
                  ),
                )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtPassword,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:  Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),

                ),
                label: Text('Password'),
                prefixIcon: const Icon(Icons.settings),
                suffixIcon: Icon(Icons.remove_red_eye)

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Forget Password?',style: TextStyle(color: Colors.blue.shade900,fontSize: 18),),
          ),
          SizedBox(
            height: 15,
          ),
  Container(
    height: 50,
    width: 340,
    decoration: BoxDecoration(
      color:Colors.black,borderRadius: BorderRadius.circular(10),

    ),
    child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 22),)),
  ),
          SizedBox(
            height: 15,
            width: 2,
          ),
          Text('OR',style: TextStyle(fontSize: 18),),
          SizedBox(
            height: 15,
            width: 2,
          ),
          Container(
            height: 50,
            width: 340,
            decoration: BoxDecoration(
              color:Colors.black,borderRadius: BorderRadius.circular(10),

            ),
            child: Center(child: Text('Sign-In with Google',style: TextStyle(color: Colors.white,fontSize: 18),)),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 40),
              child: Row(

                children: [
                  Text('Dont have an Account ?' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),),
                  SizedBox(width: 5,),
                  Text('Signup' , style: TextStyle(color: Colors.red , fontWeight: FontWeight.w500,fontSize: 18),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
