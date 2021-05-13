import 'allClases.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.deepOrange,),splashRadius: 20.0,onPressed: (){},),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(icon: Icon(Icons.settings,color: Colors.red,),splashRadius: 20.0,onPressed: (){},),
          )
        ],
        backgroundColor: Colors.greenAccent,
        title: Center(child: Text("Profile",style: TextStyle(fontWeight: FontWeight.w900))),
        elevation: 20.0,
        shadowColor: Colors.redAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white,Colors.green])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4.0,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 4.0,
                                    blurRadius: 16.0,
                                    color: Colors.green.withOpacity(0.2)
                                  )
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("https://i.kym-cdn.com/entries/icons/original/000/013/564/doge.jpg"),
                                )
                              ),
                              height: 100.0,
                              width: 100.0,
                            ),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 15.0,
                                    child: Icon(Icons.camera),
                                  ),
                                  CircleAvatar(
                                    radius: 15.0,
                                    child: Icon(Icons.delete),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(child: followerwala(9, "Friends",Colors.pinkAccent)),
                      Expanded(child: followerwala(64, "Followers",Colors.green)),
                      Expanded(child: followerwala(30,"Following",Colors.blue))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Doge Don",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w800,fontSize: 20.0 ),),
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF4E6BC),
                    border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1.0,
                      blurRadius: 8.0,
                      color: Colors.black.withOpacity(0.1),
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Text("About",style: TitleStyle(),),
                    divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            Text("Bio : \nWork, Hobbies, Mail Id, Address ",),
                            Expanded(child: editbutton())
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
              child: Container(
              decoration: BoxDecoration(
              color: Color(0xFFF4E6BC),
              border: Border.all(
              color: Colors.white,
              width: 1.0,
              style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
              BoxShadow(
              spreadRadius: 1.0,
              blurRadius: 8.0,
              color: Colors.black.withOpacity(0.1),
              )
              ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Interests",style: TitleStyle(),),
                    SizedBox(
                      height: 10.0,
                    ),
                    divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Square_interests(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnHTbkPJezeNEXBoByb7rzFyUNM7eNxSoUmA&usqp=CAU",),

                        Square_interests(url: "https://image.freepik.com/free-vector/sport-equipment-concept_1284-13034.jpg" ),

                        Square_interests(url: "https://c8.alamy.com/comp/2BMG1FN/breaking-news-logo-icon-for-news-entertaining-show-sign-banner-vector-illustration-on-circle-shape-style-background-2BMG1FN.jpg",),

                        Square_interests(url: "https://www.colourbox.com/preview/7036217-music-icon.jpg",),
                        SizedBox(
                          width: 12.0,
                        ),
                        RawMaterialButton(
                        shape: CircleBorder(),
                        fillColor: Colors.redAccent,
                        elevation: 8.0,
                        child: Icon(Icons.add),
                        onPressed: (){},
                        )
                      ],
                    )
                  ],
                ),
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF4E6BC),
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1.0,
                        blurRadius: 8.0,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Your Activity",style: TitleStyle(),),
                    ),
                    divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          followerwala(124, "Posts", Colors.blue),
                          VerticalDividerActivity(),
                          followerwala(206, "Comments", Colors.green),
                          VerticalDividerActivity(),
                          followerwala(69, "Likes", Colors.pinkAccent),
                        ],
                      ),
                    ),
                  ],

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF4E6BC),
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1.0,
                        blurRadius: 8.0,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ]
                ),
                child: Column(
                    children: [
                      Text("Create",style: TitleStyle(),),
                      divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: create(icon: Icons.add_comment_sharp,type: "Post",color: Colors.green,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: create(icon: Icons.poll_sharp,type: "Poll",color: Colors.pink,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: create(icon: Icons.amp_stories_sharp,type: "Story",color: Colors.blue,),
                          ),
                        ],
                      )
                    ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Card(
                elevation: 10.0,
                color: Colors.orangeAccent,
                child: ListTile(
                  leading: profile_Symbol(icon: Icons.home_rounded ,color: Colors.red,),
                  trailing:  profile_Symbol(icon: Icons.android_sharp,color: Colors.green,),
                  title: profile_Symbol(icon: Icons.people_sharp,color: Colors.purple),
                ),
              ),
            )
          ],
        ),
      ),
    ),
    );
  }
  TextStyle TitleStyle() => TextStyle(fontWeight: FontWeight.bold);
  Expanded followerwala(int no , String type,Color colors) {
    return Expanded(
                child: Column(
                  children: [
                    Text(no.toString()),
                    Text(type,style: TextStyle(fontWeight: FontWeight.bold,color: colors),),
                  ],
                ),
              );
  }
}
