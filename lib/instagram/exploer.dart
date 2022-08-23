import 'package:flutter/material.dart';
import 'package:instagram/instagram/home.dart';
import 'package:instagram/instagram/profile_2.dart';

class exploar extends StatefulWidget {

  @override
  State<exploar> createState() => _exploarState();
}

class _exploarState extends State<exploar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              width: 420,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, size: 30, color: Colors.grey.shade600,),
                  SizedBox(width: 5,),
                  Text("Search", style: TextStyle(fontSize: 20, color: Colors.grey.shade600),)
                ],
              ),
            ),
            Container(
              width: 420,
              height: 716,
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
          image: DecorationImage(image: AssetImage("images/photo2.jpeg"), fit: BoxFit.cover)
      ),
    );
  }
}
