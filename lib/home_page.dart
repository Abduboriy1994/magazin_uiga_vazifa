import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id ="home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<String> _itemList=[
    "assets/images/img_3.jpg",
    "assets/images/img_4.jpg",
    "assets/images/img_5.jpg",
    "assets/images/img_6.jpg",
    "assets/images/img_3.jpg",
    "assets/images/yurakk.jpg",
    "assets/images/img_3.jpg",
    "assets/images/img_3.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade900,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade900,
        leading: Icon(Icons.menu),
        title: Text("Apple Products"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 36,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber
              ),
              child: Center(
                child: Text("7"),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child:Column(
          children: [
            //#header
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/img_4.jpg"),
                      fit:BoxFit.cover
                )
              ),
          child: Container(
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
            begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.3),
                ]
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Lifesttyle Sale",style: TextStyle(color: Colors.white,fontSize: 32),),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Center(
                    child: Text("Shop now",style: TextStyle(color: Colors.black),),
                  ),
                ),
                SizedBox(height: 30,)

              ],
            ),
          ),
            ),
            SizedBox(height: 10,),
            //body
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: _itemList.map((rasm) => _callItem(rasm)).toList(),
              ),
            )
          ],
        ) ,
      ),
    );
  }

   Widget _callItem(String rasm){
   return Card(
     color: Colors.transparent,
     elevation: 0,
     child: Container(
       padding: EdgeInsets.all(15),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         image: DecorationImage(
           image: AssetImage(rasm),
           fit: BoxFit.cover
         )
       ),
       child: Row(

         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           

           Icon(Icons.heart_broken_rounded,color: Colors.redAccent,size: 35,)
         ],
       ),
     ),
   );
  }
}
