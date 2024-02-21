import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    )
  );
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('facebook', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.blue
        ),),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,0,20,0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipOval(child: Image.network('https://tr.rbxcdn.com/54148d6eef670226565d3f0ee2e11605/420/420/Hat/Png', height: 45,)),
                  SizedBox(width: 20,),
                  Text('What\'s in your mind?'),
                ],
              ), // this is for the profile and textbox
              SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){
                  print("Hello world");
                }, child: Row(
                  children: [
                    Icon(Icons.video_call, color: Colors.pink,),
                    SizedBox(width: 5,),
                    Text("Live", style: TextStyle(
                      color: Colors.black
                    ),)
                  ],
                )),

                TextButton(onPressed: (){
                  print("Hello world");
                }, child: Row(
                  children: [
                    Icon(Icons.photo, color: Colors.green,),
                    SizedBox(width: 5,),
                    Text("Photo", style: TextStyle(
                        color: Colors.black
                    ),)
                  ],
                )),

                TextButton(onPressed: (){
                  print("Hello world");
                }, child: Row(
                  children: [
                    Icon(Icons.video_call, color: Colors.purple,),
                    SizedBox(width: 5,),
                    Text("Room", style: TextStyle(
                        color: Colors.black
                    ),)
                  ],
                )),
              ],
            ),

              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                    child:  Image.network('https://as2.ftcdn.net/v2/jpg/02/87/64/73/1000_F_287647381_Jiygm0zFonZ1XBeey62xGgyRmocL7FPG.jpg', height: 150,),
                    ),
                    SizedBox(width: 20,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:  Image.network('https://as2.ftcdn.net/v2/jpg/02/87/64/73/1000_F_287647381_Jiygm0zFonZ1XBeey62xGgyRmocL7FPG.jpg', height: 150,),
                    ),
                    SizedBox(width: 20,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:  Image.network('https://as2.ftcdn.net/v2/jpg/02/87/64/73/1000_F_287647381_Jiygm0zFonZ1XBeey62xGgyRmocL7FPG.jpg', height: 150,),
                    ),
                    SizedBox(width: 20,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:  Image.network('https://as2.ftcdn.net/v2/jpg/02/87/64/73/1000_F_287647381_Jiygm0zFonZ1XBeey62xGgyRmocL7FPG.jpg', height: 150,),
                    ),

                      ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(child: Image.network('https://tr.rbxcdn.com/54148d6eef670226565d3f0ee2e11605/420/420/Hat/Png', height: 45,)),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Glenn Turla', style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('2 h')
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.blue,),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
                , textAlign: TextAlign.justify,),
              SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 TextButton(onPressed: (){
                   setState(() {
                     if (status) {
                       status = false;
                     } else {
                       status = true;
                     }
                   });
                 }, child: Row(
                   children: [
                     Icon(Icons.thumb_up, color: (status)? Colors.blue : Colors.grey,),
                     SizedBox(width: 10,),
                     Text('Like', style: TextStyle(
                       color: (status)? Colors.blue : Colors.grey
                     ),)
                   ],
                 )),

                 TextButton(onPressed: (){

                 }, child: Row(
                   children: [
                     Icon(Icons.messenger_outline_outlined, color: Colors.grey,),
                     SizedBox(width: 10,),
                     Text('Comment', style: TextStyle(
                         color: Colors.grey
                     ),)
                   ],
                 )),

                 TextButton(onPressed: (){

                 }, child: Row(
                   children: [
                     Icon(Icons.share, color: Colors.grey,),
                     SizedBox(width: 10,),
                     Text('Share', style: TextStyle(
                         color: Colors.grey
                     ),)
                   ],
                 )),
               ],
             ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(child: Image.network('https://tr.rbxcdn.com/54148d6eef670226565d3f0ee2e11605/420/420/Hat/Png', height: 45,)),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Glenn Turla', style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('2 h')
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.blue,),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', textAlign: TextAlign.justify,)


            ],
          ),
        ),
      ),
    );
  }
}
