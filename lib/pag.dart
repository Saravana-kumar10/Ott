import 'package:flutter/material.dart';
import 'package:dem/navigation.dart';
class Pg extends StatelessWidget {
  const Pg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/im3.jpg"),
            fit: BoxFit.fill,
          ),
          ),
        child: Column(
          children: [
            SizedBox(height: 70,),
            Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(2.0),
                ),
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  Text("welcome"),
                  SizedBox(height: 70,),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "enter name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: "enter password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(height: 50,
                    width: 100,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Pg1()),
                      );
                    },
                        child:Text("log in",
                          style: TextStyle(color: Colors.white,backgroundColor: Colors.black,),
                        ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),),
                  ),

                ],
              ),

            ),
            Spacer(),
            Text("signup?",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,color: Colors.blue),),
          ],
        ),
      ),
    );
  }
}
