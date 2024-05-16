import 'package:flutter/material.dart';

class redioCheakboxPage extends StatefulWidget {
  const redioCheakboxPage({super.key});

  @override
  State<redioCheakboxPage> createState() => _redioCheakboxPageState();
}

class _redioCheakboxPageState extends State<redioCheakboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //TODO- radio
          Radio(value: 'male', groupValue: gender, onChanged: (value) {

            setState(() {

              gender=value!;
            });
          },),
          Radio(value: 'female', groupValue: gender, onChanged: (value) {

            setState(() {

              gender=value!;
            });
          },),
          Radio(value: 'other', groupValue: gender, onChanged: (value) {

            setState(() {

              gender=value!;
            });
          },),



          //todo-radiolisttile
          RadioListTile(value: 'male', groupValue: gender, onChanged: (value) {

            setState(() {
              gender=value!;

            });
          },title: Text('Male'),
           activeColor: Colors.pink,
          hoverColor: Colors.pink.shade300,
         ),

          RadioListTile(value: 'female', groupValue: gender, onChanged: (value) {

            setState(() {
              gender=value!;

            });
          },title: Text('Female'),
            activeColor: Colors.pink,
            hoverColor: Colors.pink.shade300,
            ),
          RadioListTile(value: 'other', groupValue: gender, onChanged: (value) {

            setState(() {
              gender=value!;

            });
          },title: Text('Others'),
            activeColor: Colors.pink,
            hoverColor: Colors.pink.shade300,
           ),



          //todo cheakbox

          Checkbox(value: c, onChanged: (value) {

            setState(() {
              c=value!;
            });
          },
          ),
          Checkbox(value: cpp, onChanged: (value) {

            setState(() {
              cpp=value!;
            });
          },
          ),
          Checkbox(value: python, onChanged: (value) {

            setState(() {
              python=value!;
            });
          },
          ),

          //todo-cheakboxlisttile
          CheckboxListTile(value: c, onChanged:
          (value) {
            setState(() {
              c=value!;
            });
          },title: Text('C lag'),
           activeColor: Colors.pink,
          hoverColor: Colors.pink.shade300,),
          CheckboxListTile(value: cpp, onChanged:
              (value) {
            setState(() {
              cpp=value!;
            });
          },title: Text('Cpp lag'),
            activeColor: Colors.pink,
            hoverColor: Colors.pink.shade300,),
          CheckboxListTile(value: python, onChanged:
              (value) {
            setState(() {
              python=value!;
            });
          },title: Text('Python lag'),
            activeColor: Colors.pink,
            hoverColor: Colors.pink.shade300,),

        ],
      ),
    );
  }
}

String gender='male';
bool c=false;
bool cpp=false;
bool python=false;