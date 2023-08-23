import 'package:flutter/material.dart';

class Te extends StatelessWidget {
  const Te({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black12,
        leading: Icon(Icons.menu,size: 35,color: Colors.cyan,),
        title: Text("welcome",
          style: TextStyle(color: Colors.cyan,fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("asset/im.jpg"),
          )

        ],
      ),

      body: Column(
        children: [
          SizedBox(height: 50),
          Expanded(child: Text("welcome to login page. Have a nicce dayccccccccccccccccccccccccccccccccccccccccccccccccccc.",)),
          Text("hi"),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: "Enter name",
              border: OutlineInputBorder()

            ),

          ),
          TextFormField(),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(onPressed: (){}, child: Text("log in")),
          ),
          SizedBox(height: 50,width: 50),

          Container(
            height: 200,
            width: 300,

            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("asset/im2.jpg"),
                fit: BoxFit.fill,
              ),
             // shape: BoxShape.circle,

            ),
            child: Center(child: Text("hi")),
          ),




          //Image.asset("asset/im2.jpg"),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text("Sign up?"),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(

      ),
    );
  }
}
