import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dynamic_text_fieldPage extends StatefulWidget {
  const dynamic_text_fieldPage({super.key});

  @override
  State<dynamic_text_fieldPage> createState() => _dynamic_text_fieldPageState();
}

class _dynamic_text_fieldPageState extends State<dynamic_text_fieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Dynamic_text_fieldPage',style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          children:[
            SizedBox(
              height: 20,
            ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 270,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       spreadRadius: 2,
                       blurRadius: 2,
                       offset: Offset(0,2),
                       color: Colors.grey
                     )
                   ],
                   borderRadius: BorderRadius.circular(10)
                 ),
                  child: Center(child: Text('All Add to TextFiled',style: TextStyle(
                    fontSize:16,
                    fontWeight: FontWeight.bold
                  ),)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 5),

      //
                child: Column(
                  children: [
                   GestureDetector(onTap: () {
                     TextEditingController txtController=TextEditingController();
                     setState(() {
                       txtControllerList.add(txtController);
                     });

                   },
                     child: Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [
                           BoxShadow(
                               spreadRadius: 2,
                               blurRadius: 2,
                               offset: Offset(0,2),
                               color: Colors.grey
                           )
                         ],
                       ),
                       child: Icon(Icons.add),
                     ),
                   )
                  ],
                ),

              ),
            ],
          ),

          ...List.generate(txtControllerList.length, (index) => ListTile(
            title: TextField(
                   controller: txtControllerList[index],
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2
                  )

                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 2
                    )

                ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors.black,
                      width: 3
                  )

              ),


              ),



            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [

                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    TextEditingController txtController=TextEditingController();
                    setState(() {
                      txtControllerList.removeAt(index);
                    });

                  },
                ),
              ],
            ),


          )),

          ],

        ),

      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          String skills=txtController.text;

          for(int i=1;i<txtControllerList.length;i++)
          {
            skills=skills+ " " +txtControllerList[i].text;
          }
          print(skills);
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${skills}${txtControllerList[1].text}',style: TextStyle(
             color: Colors.white,fontSize: 18
           ),)));
        },
        child: Icon(Icons.navigate_next_sharp),
      ),



    );
  }
}

TextEditingController  txtController=TextEditingController();
List txtControllerList=[
  txtController,
];