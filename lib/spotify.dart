import 'package:flutter/material.dart';
class Sp extends StatefulWidget {
  const Sp({super.key});

  @override
  State<Sp> createState() => _SpState();
}

class _SpState extends State<Sp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
        { return [
          SliverAppBar(

            toolbarHeight:490,
            automaticallyImplyLeading: false,
            forceMaterialTransparency: true,

            stretch: true,
            floating: true,
            snap: true,
            backgroundColor: Colors.brown.shade200,
            flexibleSpace:

              Column(
                children: [
                  SizedBox(height: 50,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        height:40,
                        width: 270,

                        child: TextFormField(
                          decoration:InputDecoration(
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.search,color: Colors.white,),

                            hintText: "Find playlist",
                            hintStyle: TextStyle(color: Colors.white),
                            // hintStyle: TextStyle(color: Colors.white),

                          ),
                        ),
                      ),
                   Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.brown,
                          shadowColor: Colors.brown,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(5.0),
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () {},
                            child: const Text("sort"),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 20,
                  ),

                  Center(
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(

                        border: Border.all(),
                        image:DecorationImage(image: AssetImage("asset/mob.jpg"),fit: BoxFit.fill) ,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Text("New music from cover sssssss\nspotiffy\n4hrs21min",
                      style:TextStyle(color: Colors.grey.shade600,fontSize: 18) ,),

                  )

                ],
              ),
            bottom: PreferredSize(
                child: Stack(
                  children: [Container(
                    height: 50,
                    color: Colors.black,
                    child: Row(
                      children:
                      [
                        SizedBox(width: 10,),
                        Icon(Icons.favorite_border_outlined,color: Colors.white,),
                        SizedBox(width: 30,),
                        Icon(Icons.arrow_circle_down,color: Colors.white),
                        SizedBox(width: 30,),
                        Icon(Icons.person_add,color: Colors.white),
                        SizedBox(width: 30,),
                        Icon(Icons.more_vert,color: Colors.white),
                        SizedBox(width: 70,),
                        Icon(Icons.shuffle,color: Colors.white),
                      ],
                    ),
                  ),
                    Positioned(
                      right: 30,

                      child: Icon(Icons.play_circle,color: Colors.green,size: 50,),
                    ),
              ],

                ),


                preferredSize: Size.fromHeight(40)),

                      ),
        ];

        },
          body:ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,


            itemCount: 50,
              itemBuilder: (context, index) {

                return ListTile(
                  dense: true ,
                  tileColor: Colors.black,
                  leading: Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("asset/im.jpg"),fit: BoxFit.fill)
                    ),
                  ),
                  title:Text("Naaaa ready (from leo)",style: TextStyle(color: Colors.white,fontSize: 20),),
                  subtitle: Row(
                    children: [
                      Text("lyrics",style: TextStyle(backgroundColor: Colors.grey.shade700,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text(" thalapathyyy,aniruth",style: TextStyle(color: Colors.white),),
                    ],
                  ),
               trailing: Icon(Icons.more_vert),
                );

              },

  ),
        ),
          Positioned(
              child: Icon(Icons.arrow_back,color: Colors.white,),
          ),
    ]

      ),

      );

  }
}
