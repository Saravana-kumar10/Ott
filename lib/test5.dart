import 'package:flutter/material.dart';
class Tx extends StatelessWidget {
  const Tx({super.key});

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
      body: Column(
        children: [
          SizedBox( height: 100,),
          Container(
            height: 300,
            width: 300,

            child: Row(
              children: [
                SizedBox(width: 40,),
                Container(width: 100,height: 200,
                    child: Image(image: AssetImage("asset/im.jpg"),
                    fit: BoxFit.fill,),



                ),

                SizedBox(width: 50,),
                Container(
                  height:200,width: 100,
                    child: Image(image: AssetImage("asset/im2.jpg"),
                    fit: BoxFit.fill,),
                ),

              ],

            ),

          ),



        Container(
          height: 300,width: 350,
          decoration: BoxDecoration(
            border:Border.all(),
            image:DecorationImage(image: AssetImage("asset/im.jpg"),fit: BoxFit.fill),
          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,

              ),
            ],
          ),
        ),
        ],


      ),
    );
  }
}
