import 'package:flutter/material.dart';
import 'detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Computer Knowledge")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("Home Page"),
            MyBox("What is a computer?","Computer is a things to calculate","https://cdn.pixabay.com/photo/2022/03/04/20/53/city-7048002_960_720.jpg"),
            SizedBox(height: 20,),
            MyBox("What is a Flutter?","Flutter is a tool to create moblie","https://pbs.twimg.com/media/FMYGZ3ZVIAcGekP?format=jpg&name=4096x4096"),
            SizedBox(height: 20,),
             MyBox("What is a Dart?","Dart is the language uesd in Flutter","https://cdn.pixabay.com/photo/2022/03/02/18/07/russian-borzoi-7043714_960_720.jpg"),
            SizedBox(height: 20,),
            TextButton(
              onPressed:() {
                print("next page >>");
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
              }, 
            child: Text("readmore")
            ) 
            
          ],
        ),
      ),
    );
      
   
  }
}

Widget MyBox(String title,String subtitle,String image){ // สร้าง widget เองนักเลงพอ // custom widget // สร้าง widget เป็น function
  return Container(
    padding: EdgeInsets.all(20),
    height: 150,
    decoration: BoxDecoration(
      color: Colors.blue[200],
      borderRadius: BorderRadius.circular(20),
      image:DecorationImage(
      image:NetworkImage(image),
      fit:BoxFit.cover,
      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5),BlendMode.darken)
      )
  
    ),
    child: Column
    (
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
      Text(title, style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
      Text(subtitle, style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)
    ],),
  );
}