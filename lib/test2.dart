import 'package:flutter/material.dart';
class Tr extends StatelessWidget {
  const Tr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,size: 30,color: Colors.black,),
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
        actions: [
          Text("hello"),
        ],
      ),

      body: Column(

        children: [
          SizedBox(height: 50,width: 50),
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("asset/im.jpg"),
                fit: BoxFit.fill,


              ),
            ),
            child: Column(
              children: [
                SizedBox(height:100,),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "enter name",
                    border: OutlineInputBorder(),
                  ),
                ),
              SizedBox(height: 20,width: 20),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: "enter password",
                  border: OutlineInputBorder(),
                ),
              ),
                SizedBox(height: 20,width: 20,),
                ElevatedButton(onPressed: (){}, child: Text("login"),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  ),
              ],
            ),

          ),
          SizedBox(height: 50,),
          Row(
            children: [
              SizedBox(width: 50),
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
                child: Center(
                    child: Text("thank",style: TextStyle(color: Colors.cyan,fontWeight:FontWeight.bold),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("have nyz day",),
              ),
              Container(
                height: 200,
                width: 100,
                decoration: BoxDecoration(

                  border: Border.all(),
                  image: DecorationImage(
                      image:AssetImage("asset/im2.jpg"),
                  fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ],

      ),




    );
  }
}
