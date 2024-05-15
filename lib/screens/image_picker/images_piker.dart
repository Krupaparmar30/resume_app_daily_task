

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
ImagePicker imagePicker=ImagePicker();
File? fileImage;

class imagepickerPage extends StatefulWidget {
  const imagepickerPage({super.key});

  @override
  State<imagepickerPage> createState() => _imagepickerPageState();
}

class _imagepickerPageState extends State<imagepickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Image Picker',style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
      Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
           color: Colors.teal,

          image:(fileImage!=null)?DecorationImage(image: FileImage(fileImage!), fit: BoxFit.cover) :null,

        ),
      ),
      // Center(
      //   child: CircleAvatar(
      //     backgroundColor: Colors.pink,
      //     radius: 100,
      //     backgroundImage:(fileImage!=null)? FileImage(fileImage!):null,
      //   ),
      // ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              IconButton(onPressed: () async {
          XFile? xfileImage=await  imagePicker.pickImage(source: ImageSource.camera);
          setState(() {
            fileImage=File(xfileImage!.path);

          });
                
              }, icon: Icon(Icons.camera_alt,size: 50,)),

              IconButton(onPressed: () async {
              XFile? xfileImage=await imagePicker.pickImage(source: ImageSource.gallery);
              setState(() {
                fileImage=File(xfileImage!.path);

              });
              }, icon: Icon(Icons.photo,size: 50,),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Text(
                'Upload me',
                style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
