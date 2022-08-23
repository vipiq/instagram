import 'package:flutter/material.dart';
import 'package:instagram/instagram/exploer.dart';
import 'package:instagram/instagram/home.dart';
import 'package:instagram/instagram/profile_2.dart';

class profile extends StatefulWidget {


  final String imageUrl;
  final String name;
  final String location;

  profile({
    required this.imageUrl,
    required this.name,
    required this.location,
  });

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(
                    spreadRadius: 15,
                    blurRadius: 30,
                    color: Colors.grey.withOpacity(0.2),
                  )],
                  image: DecorationImage(image: AssetImage(widget.imageUrl), fit: BoxFit.cover),

                ),
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20),
                    child: Text(widget.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                  ),
                  Text(widget.location)
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 15),
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
                width: 420,
                height: 500,
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  children: [
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                    post(),
                  ],
                ),
              )
            ],
          ),
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

  Container post(){
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage("images/photo2.jpeg"), fit: BoxFit.cover)
      ),
    );
  }
}
