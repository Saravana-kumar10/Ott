import 'package:dem/model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class In extends StatefulWidget {
  const In({super.key});

  @override
  State<In> createState() => _InState();
}

class _InState extends State<In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Text("saaara",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),

            Icon(Icons.keyboard_arrow_down_sharp),
          ],
        ),
        leadingWidth: 160,
        actions: [
          Icon(Icons.add_box_outlined),
          SizedBox(width: 30,),
          Icon(Icons.menu,),
        ],
      ),
      body: DefaultTabController(
        length: 3,

        child: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
        {
          return [SliverAppBar(
            toolbarHeight: 300,

            forceMaterialTransparency: true,
            excludeHeaderSemantics: true,
            backgroundColor: Colors.white,
            floating: true,
            automaticallyImplyLeading: false,
            snap: true,
            stretch: false,

            pinned: true,
            title: Column(
              children: [
            Row(
            children: [
            SizedBox(width: 1,),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                border:Border.all(width: 1,color: Colors.grey) ,
                shape: BoxShape.circle,

                image: DecorationImage(image: AssetImage("asset/mob.jpg",),fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: 30,),
            Column(
              children: [
                Text("10",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("Posts",style: TextStyle(fontSize: 16,fontStyle: FontStyle.normal),)
              ],
            ),
            SizedBox(width: 30,),
            Column(
              children: [
                Text("341",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("Folowers",style: TextStyle(fontSize: 16,fontStyle: FontStyle.normal),)
              ],
            ),
            SizedBox(width: 30,),
            Column(
              children: [
                Text("444",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("Following",style: TextStyle(fontSize: 16,fontStyle: FontStyle.normal),)
              ],
            ),
              SizedBox(height: 20,),
            ],
          ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Saravana\neeeeeeee",
                            style: TextStyle(color: Colors.black,
                                fontStyle: FontStyle.normal,fontWeight: FontWeight.normal ),
                            children: [
                              TextSpan(
                                text: "\n#aaaaaaaaa\n#gggggggg\n#kkkkkkkkk",
                                style: TextStyle(color: Colors.lightBlue),
                              ),

                            ]


                        ),

                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){},
                      child: Text("Edit Profile",style: TextStyle(color: Colors.black),),),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){},
                      child: Text("Share Profile",style: TextStyle(color: Colors.black),),),
                    SizedBox(width: 10,),
                    // FloatingActionButton(onPressed: (){},
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(5),
                    // ),
                    // child: Icon(Icons.person_add),)
                    ElevatedButton(onPressed: (){},
                      child: Icon(Icons.person_add),

                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: 400,

                  child: Row(
                    children: [
                      Text("Story highlights",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                      SizedBox(width: 170),
                      IconButton(
                        icon: const Icon(Icons.arrow_drop_down),
                        onPressed:(){

                        },
                      ),
                      // Container(
                      //   height: 50,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //     border: Border.all(),
                      //   ),
                      //   child: ExpansionTile(
                      //     initiallyExpanded: false,
                      //       title: Text( "hhh"),
                      //
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ]
            ),


            bottom: TabBar(
              dragStartBehavior: DragStartBehavior.down,
                 physics: BouncingScrollPhysics(),
                tabs: [
                  Tab(icon: Icon(Icons.grid_on),),
                  Tab(icon: Icon(Icons.video_collection),),
                  Tab(icon: Icon(Icons.person_pin_rounded),),
                  Tab(icon: Icon(Icons.person_pin_rounded),),
                ]),

          ),

          ];
        },
           body: TabBarView(
            children: [
              GridView.builder(

                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,

                      childAspectRatio: 3/2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2),
                  shrinkWrap: true,
                  itemCount: lis.length,


                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(2),
                        image: DecorationImage(image: AssetImage(lis[index].image),fit: BoxFit.fill,),),


                    );
                  }
              ),
              GridView.builder(
               addAutomaticKeepAlives: true,

                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

                      maxCrossAxisExtent: 150,

                      childAspectRatio: 3/2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1),

                  shrinkWrap: true,
                  itemCount: li.length,


                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(1),
                        image: DecorationImage(image: AssetImage(li[index].images),fit: BoxFit.fill,),),


                    );
                  }
              ),
              Icon(Icons.hourglass_empty),
            ]),

        ),
      ),

    );
  }
}
