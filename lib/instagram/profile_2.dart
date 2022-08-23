import 'package:flutter/material.dart';

class profile_2 extends StatefulWidget {
  const profile_2({Key? key}) : super(key: key);

  @override
  State<profile_2> createState() => _profile_2State();
}

class _profile_2State extends State<profile_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.only(top: 36),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  child: ClipRRect(
                    child: Center(child: Image.asset("images/photo1.jpeg",
                                        width: 429,
                                        fit: BoxFit.fill,
                                        ),
                                ),
                  ),
                ),
                Positioned(top:5, child: Container(
                    width: 428,
                    decoration: const BoxDecoration(
                    ),
                    child: Padding(padding: EdgeInsets.all(20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),
                              Icon(Icons.menu_outlined, color: Colors.white,)
                            ]
                        )
                    )
                ),),
                Positioned(top: 90, child: Container(
                  width: 430,
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)
                                    )
                  ),

                )),
                Positioned(top : 50, left: 160,child:Container(
                  width: 90,
                  height: 90,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey,
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
                    child: Center(child: Image.asset("images/photo1.jpeg",
                                          width: 90,
                                          fit: BoxFit.fill,
                                          ),
                                  ),
                  ),
                ),),
              ],
            ),
            Container(
              width: 430,
              height: 740,
              child: ListView(
                children: [
                  Text("Ibrahim alshaikli",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue
                      ),
                    ),
                  const Padding(padding: EdgeInsets.only(top:5),
                    child: Text("Los Angeles, CA",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(15),
                    child: Text("I'm a positive persone. ilove to travel and eat. Always avalable for chat",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(0,2)
                              )]
                          ),
                          child: const Icon(Icons.message_outlined, size: 30,
                                      color: Colors.blue,
                                ),
                        ),
                        Container(
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [BoxShadow(
                                  color: Colors.blue.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 20,
                                  offset: Offset(0,4)
                              )]
                          ),
                          child: const Center(
                            child: Text("Follow",
                              style: TextStyle(fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(0,2)
                              )]
                          ),
                          child: Icon(Icons.share, size: 30, color: Colors.blue,),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text("870", style: TextStyle(fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                ),
                            Text("Following", style: TextStyle(fontWeight: FontWeight.bold,
                                            fontSize: 16, color: Colors.grey),
                                ),
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 45,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        Column(
                          children: const [
                            Text("120K", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                            Text("Followers", style: TextStyle(fontWeight: FontWeight.bold,
                                                        fontSize: 16, color: Colors.grey),
                                                      ),
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 45,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        Column(
                          children: const [
                            Text("354K", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                            Text("Likes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 430,
                    height: 10,
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  Padding(padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Followers", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),),
                        Text("View All", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),),
                      ],
                    ),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        story(),
                        story(),
                        story(),
                        story(),
                        story(),
                        story(),
                        story(),
                        story(),
                        story(),
                      ],
                    ),
                  ),
                  Container(
                    width: 430,
                    height: 10,
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  const Padding(padding: EdgeInsets.all(10),
                    child: Text("Posts", textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                        ),
                  ),
                  Posts(),
                  Posts(),
                  Posts(),
                  Posts(),
                ],
              ),
            )
          ]
      ),
      )
    );
  }
  Padding story (){
    return Padding(padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                color: Colors.grey,
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
          Padding(padding: EdgeInsets.only(top: 8),
          child: Text("W52", style: TextStyle(fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }

Padding Posts(){
    return Padding(padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("images/photo7.jpeg", height: 100,),
          Image.asset("images/photo7.jpeg", height: 100,),
          Image.asset("images/photo7.jpeg", height: 100,),
        ],
      ),
    );
}

}



