

import 'package:dem/navigation.dart';
import 'package:flutter/material.dart';
class Se extends StatelessWidget {
  const Se({super.key});

  @override
  Widget build(BuildContext context) {
    final gkey= GlobalKey<FormState>();




    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: Icon(Icons.menu),
        title: Center(child: Text("hello")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),
        ],

      ),
      body: Container(

        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("asset/mob.jpg",),fit: BoxFit.fill)
        ),
        child: Stack(
          children:[
            Form(
              key: gkey,
              child: Column(
              children: [
                SizedBox(height: 70,),
                Container(

                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(),


                  ),
                  child: Column(

                    children:[SizedBox(height: 50,),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "name",
                        prefixIcon: Icon(Icons.person),
                      ),
                      keyboardType: TextInputType.text,

                      validator: (value) {
                        String? regx = r'^[a-z A-Z]';
                        RegExp rgx = new RegExp(regx);

                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (!rgx.hasMatch(value)) {
                           return 'use only alphabets';
                        } else
                          return null;
                      }
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(

                        autofocus: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password),
                        ),
                        validator: (value) {
                          String? pdkey=r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)';
                          RegExp pkey = new RegExp(pdkey);
                          if (value == null || value.isEmpty  ) {
                            return 'Please enter some text';
                          }
                          else if (value.length <6) {
                            return 'password must not be less than 6 char';
                          }
                          else if(value.length >15)
                            {
                              return 'password must not more than 10';
                            }
                          else if(!pkey.hasMatch(value))
                            { return 'enter a valid one';
                              }
                             return null;
                            }

                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(onPressed: (){


                      if(gkey.currentState!.validate())
                        {
                          ScaffoldMessenger.of(context).showSnackBar(

                            const SnackBar(content: Text('Processing Data')),

                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Pg1 ()),
                          );




                        }
                      // if (gkey.currentState!.validate()) {
                      //
                      //
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //
                      //     const SnackBar(content: Text('Processing Data')),
                      //
                      //   );
                      // }
                     // Navigator.push(context, MaterialPageRoute(builder: (context) => const Pg1()),);

                    }, child: Text("lOG IN",style: TextStyle(

                    ),
                    )
                    ),
                    ]
                ),

                ),

              ],
          ),
            ),
            Positioned(
              left: 30,
                top: 300,
                child: Icon(Icons.login,size: 50,color: Colors.grey.shade700,),),
      ],
        ),
      ),
    );
  }
}
