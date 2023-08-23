import 'package:flutter/material.dart';

import 'botnavi.dart';
class Tu extends StatelessWidget {
  const Tu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/im.jpg"),
            ),
            shape: BoxShape.circle,
          ),
        ),
        title: Center(child: Text("hello")),
      ),
      body: Container(
        height: double.infinity,width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
          image:DecorationImage(image: AssetImage("asset/im.jpg"),
          fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              height: 200,width: 300,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                children: [SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Sara()),
                      );
                    },
                    child: Container(
                      height: 100,width:100 ,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/im2.jpg"),
                        fit: BoxFit.fill,),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 50,),
                      Container(
                        height: 100,width: 150,
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: "enter",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Container(
                        height:30,
                        width:150,
                        child: ElevatedButton(onPressed: (){},
                          child: Text("log in",
                            style: TextStyle(color: Colors.cyan),),style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                          ),)
                        ,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 300,
              width: 330,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        Container(
                          height: 100,width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/im.jpg"),
                            fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 100,width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("asset/im2.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    height: 200,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                          image: AssetImage("asset/im.jpg"),
                      fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    height: 200,
                    width: 100,
                    child: Column(
                      children: [SizedBox(height: 50,),
                        Text("thnkyyyyyyyyyyyyyyy",style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.cyan,fontSize: 20),),
                        Text("yyyyyyyy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            const Spacer(),


            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Sara()),
                  );
                },
                child: Text("Login")
            ),
            //Spacer(),

          ],
        ),
      ),
    );
  }
}
