import 'package:flutter/material.dart';
class Ts extends StatelessWidget {
  const Ts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            child: Icon(Icons.arrow_back),
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
            Container(
              child: Row(
                children: [SizedBox(height: 300,width: 50),
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage("asset/im2.jpg"),
                        fit: BoxFit.fitWidth,


                      ),

                    ),
                    child: Column(
                      children: [

                        Text("image1",),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(70.0),
                    child: Container(
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("asset/im2.jpg"),
                          fit: BoxFit.fitWidth,

                        ),

                      ),
                    ),
                  ),




                ],
              ),

            ),
            Column(
              children: [
                Row(
                  children: [SizedBox(width: 50),
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
                    Container(
                      height: 200,
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter",
                          icon: Icon(Icons.person),

                        ),

                      ),


                    ),
                    Container(
                      height: 300,
                      width: 20,
                      child: ElevatedButton(onPressed: (){},
                          child:Text("Login"),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),

                      ))
                    ),

                  ],

                ),

              ],
            ),
            Column(
              children: [
                Text("Welcome to log in page.have nice day"),
              ],
            ),
          ],

        ),
      ),




    );
  }
}
