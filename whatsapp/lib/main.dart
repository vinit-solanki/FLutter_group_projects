import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chats.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsUp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        ),
      home:  const MyHomePage(title: 'WhatUp!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const CustomScrollView(scrollDirection: Axis.vertical);
    return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        // backgroundColor:Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title:
        const Text("WhatUp",
        style:TextStyle(color: Colors.grey,fontStyle:FontStyle.normal,
        fontWeight: FontWeight.bold, fontSize: 24),
        ),  
        centerTitle: false,
        actions:[
         IconButton(onPressed: (){ },icon:const  Icon(Icons.camera_alt_rounded)),
         IconButton(onPressed: (){}, icon:const  Icon(Icons.search),),
         IconButton(onPressed: (){}, icon:const  Icon(Icons.more_vert),),
        ],
        bottom:  const TabBar(     
              tabs:[ 
              Tab(text: 'Chats',),
              Tab(text: 'Updates',),
              Tab(text: 'Calls',),
              ],
          ),
      ),
      backgroundColor: Colors.black,
      body: const ContactsList(),
     ),
    );
  }
}
        //   Container(
        //        child: Row(
        //               children:<Widget>[
        //            const SizedBox(height: 2,width:5,),
                  
        //         const SizedBox(height: 2,width:60,),
        //           TextButton(onPressed: (){
        //           }, 
        //           child: const Text('Updates',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey,fontSize: 22),),
        //           ),const SizedBox(height: 2,width:60,),
        //           TextButton(onPressed: (){
        //           }, 
        //           child: const Text('Calls',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey,fontSize: 22),),
        //           ),
        //       ],   
        //        ),
        // ),
      /*child: SizedBox(
         width:100,
        height: 50,
        color:Colors.grey,
        child:Center(
        child:
        TextButton(
            child:Text('Click Here!'),
          onPressed:(){
              print("TAPPED!");
          },
        ),
          width:1000, height:800,
          child:Image.asset('assets/images/BarneyWhatUp.jpg'),
        ),*/


