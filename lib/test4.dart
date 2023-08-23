import 'package:flutter/material.dart';
class Tz extends StatelessWidget {
  const Tz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Icon(
              Icons.arrow_back,),
        decoration: BoxDecoration(
          border: Border.all(),
          shape: BoxShape.circle,
        ),
        ),
        title: Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage("asset/im.jpg"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),

      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 100,width: 200,),
            Row(
              children: [
                SizedBox(width: 50,),
                Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("asset/im2.jpg"),
                      fit: BoxFit.fill,


                    ),

                  ),
                ),
                SizedBox(width: 100,),
                Container(

                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("asset/im2.jpg"),
                      fit: BoxFit.fill,

                    ),

                  ),

                ),
              ],

            ),
         SizedBox(height: 50,),

         Container(


           decoration: BoxDecoration(
             border: Border.all(),
             image: DecorationImage(
               image: AssetImage("asset/im2.jpg"),
               fit: BoxFit.fill,
             ),
           ),
           child: Column(
             children: [
               Container(
                 height: 300,
                 width: 400,
                 child: Row(
                   children: [
                    // SizedBox(height: 400,width: 20,),


                     Container(
                       height: 200,
                       width: 100,
                       decoration: BoxDecoration(
                         border: Border.all(),
                         image: DecorationImage(
                           image: AssetImage("asset/im.jpg"),
                           fit: BoxFit.fill,

                         ),

                       ),

                     ),
                     Column(
                       children: [SizedBox(width: 150,),
                         Container(
                           height: 150,
                           width: 200,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               children: [
                                 TextFormField(
                                   decoration: InputDecoration(
                                     icon: Icon(Icons.person),
                                     hintText: "enter",
                                     border: OutlineInputBorder(),
                                   ),
                                 ),
                                 SizedBox(height: 30,),
                                 ElevatedButton(onPressed: (){},
                                   child: Text("log in"),
                                   style: ElevatedButton.styleFrom(
                                     shape: CircleBorder(),
                                   ),)
                               ],
                             ),

                           ),




                         ),


                       ],
                     ),
                   ],
                 ),
               ),

             ],
           ),
         ),
          Row(
            children: [
              SizedBox(width:100),

              Column(
                children: [
                  Text("thank you. have nice day",style: TextStyle(color: Colors.cyan,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                  Text("vvvvvvvvvv",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.cyanAccent),),
                ],
              ),
            ],
          ),],

        ),


      ),

    );
  }
}
