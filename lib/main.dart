import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//Source code Follow
main(){
  runApp(const myApp());//Applicaton
}

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:ThemeData(primarySwatch: Colors.grey) ,
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar=============
      appBar: AppBar(
        title: Text("My First app"),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 70,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.red,

      ),






      //Body===============
      body: Text('Hellow'),

      //Drawer
      //drawer:() ,
      //endDrawer: (),
      //bottomNavigationBar: ,
      //floatingActionButton: ,



    );


  }
}
