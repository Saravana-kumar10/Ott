import 'package:flutter/material.dart';
class Ty extends StatelessWidget {
  const Ty({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [ SizedBox(height: 50,width:50,),
            Row(
              children: [
                SizedBox(width: 50,),

                Container(
                  height: 300,
                  width: 150,
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Container(
                          height: 200,width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),topRight: Radius.circular(10),topLeft: Radius.circular(10)),


                        ),
                        child: Column(
                          children: [
                            Container( height: 170,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                border: Border.all(),
                                
                                image: DecorationImage(image: AssetImage("asset/im3.jpg"),
                                  fit: BoxFit.fill,
                                ),

                              ),),
                            Spacer(),
                            Text("hi"),
                          ],
                        ),
                        ),
                          ],
                  ),

                ),
                Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20), topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                  ),

                  child:Column(
                    children: [
                      Container( height: 170,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("asset/im.jpg"),
                            fit: BoxFit.fill,
                          ),

                        ),),
                      Spacer(),
                      Text("hi"),
                    ],
                  ),

                ),


              ],
            ),
            SizedBox(height: 50,),
            SingleChildScrollView(
              scrollDirection:Axis.horizontal,
              child: Container(
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(image: AssetImage("asset/im.jpg"),fit: BoxFit.fill),
                ),
                child: Row(
                    children: [
                      Container(
                        height: 200,width: 200,
                          child: Image(image: AssetImage("asset/im2.jpg"),)),
                      Column(
                        children: [
                          SizedBox(height: 100,),
                          Container(
                              height:100,
                              width:250,
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: 200,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.person),
                                      hintText: "enter",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),),
                          SizedBox(height: 5.0,),
                          Container(
                            height:50,
                            width:100,
                            child: ElevatedButton(onPressed: (){},
                              child: Text("log in",
                                style: TextStyle(color: Colors.cyan),),style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                            ),),
                          ),
                        ],
                      ),
                    ],
                ),


              ),
            ),
            SizedBox(height: 20,),
            Container(height:100,width: 300,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Column(
                children: [SizedBox(height: 20,),
                  Text("wwwwwwwww",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyanAccent),),
                  Text("ttttttt"),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
