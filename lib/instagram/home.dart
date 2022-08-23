import 'package:flutter/material.dart';
import 'package:instagram/instagram/exploer.dart';
import 'package:instagram/instagram/profile.dart';
import 'package:instagram/instagram/profile_2.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset("images/instgram.png"),
        leadingWidth: 200,

        actions: [
          Icon(Icons.add_outlined, color: Colors.black,),
          SizedBox(width: 10,),
          Icon(Icons.chat_bubble_outline, color: Colors.black,),
          SizedBox(width: 10,),
        ],
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
            width: 425,
            height: 713,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      test(),
                      test(),
                      test(),
                      test(),
                      test(),
                      test(),
                      test(),
                      test(),
                    ],
                  ),
                ),
                posts(
                      "images/photo1.jpeg",
                     "ibrahim ali",
                     "baghdad",
                     "w52",
                    "images/photo1.jpeg"
                ),
                posts(
                    "images/photo2.jpeg",
                    "hassan ali",
                    "basrah",
                    "w521",
                    "images/photo2.jpeg"
                ),
                posts(
                    "images/photo3.jpeg",
                    "hussien ali",
                    "krabala",
                    "w522",
                    "images/photo3.jpeg"
                ),
                posts(
                    "images/photo4.jpeg",
                    "mohammed ali",
                    "mousel",
                    "w523",
                    "images/photo4.jpeg"
                ),
                posts(
                    "images/photo5.jpeg",
                    "ahmed ali",
                    "remadi",
                    "w524",
                    "images/photo5.jpeg"
                ),
                posts(
                    "images/photo6.jpeg",
                    "kareem ali",
                    "babel",
                    "w525",
                    "images/photo6.jpeg"
                ),
                posts(
                    "images/photo7.jpeg",
                    "yousof ali",
                    "najaf",
                    "w526",
                    "images/photo7.jpeg"
                ),
              ],
            ),
          )

        ],
      ),

      bottomNavigationBar: ButtonBar(
        buttonPadding:  EdgeInsets.symmetric(vertical: 0, horizontal: 35),
        alignment: MainAxisAlignment.center,
        children: [
          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => home()
            ));
          },
            child:
            Icon(Icons.home_filled, size: 40,),
          ),
          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => home()
            ));
          },
            child:
            Icon(Icons.search, size: 40,),
          ),
          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => exploar()
            ));
          },
            child:
            Icon(Icons.video_camera_back_outlined, size: 40,),
          ),
          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => home()
            ));
          },
            child:
            Icon(Icons.favorite, size: 40,),
          ),
          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => profile_2()
            ));
          },
            child:
            Icon(Icons.person, size: 40,),
          ),

        ],
      ),
    );
  }

  Padding test (){
    return Padding(padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 90,
            height: 90,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(width: 2,),
                borderRadius: BorderRadius.circular(45),
                boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: Offset(0,4)
                )]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(45)),
              child: Center(child: Image.asset("images/photo1.jpeg", width: 90, fit: BoxFit.fill,),),
            ),
          ),
        ],
      ),
    );
  }

  Padding posts(
      String imageUrl,
      String name,
      String location,
      String username,
      String postImageUrl
      ){
    return Padding(padding: EdgeInsets.all(5),
      child: Column(

        children: [
          Container(
            width: 415,
            height: 450,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0,4)
                )]
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(width: 2,),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 20,
                              offset: Offset(0,4)
                          )]
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (builder) => profile(
                                  imageUrl: imageUrl, name: name, location: location
                              )));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(45)),
                          child: Center(child: Image.asset(imageUrl, width: 90, fit: BoxFit.fill,),),
                        ),
                      )
                    ),
                    Text("w52", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                  ],
                ),

                Container(
                  width: 430,
                  height: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(postImageUrl), fit: BoxFit.cover)
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.linked_camera_outlined, size: 40,),
                    SizedBox(width: 10,),
                    Icon(Icons.chat_bubble_outline, size: 40,)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}


