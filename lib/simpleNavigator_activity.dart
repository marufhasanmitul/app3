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
      //theme:ThemeData(primarySwatch: Colors.grey) ,
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

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute( builder: (context)=>SecondPage("This is form Home Page Text")  ));
          }, child: Text('SecondPage')),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute( builder: (context)=>ThirdPage("") ));
          }, child: Text('ThirdPage')),
        ],
      ),



    );


  }
}

class SecondPage extends StatelessWidget{
  String msg;
     SecondPage(
      this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () { 
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage("Second Activity text")));
        },child:Text('Go Third Page') ),
      ),

    );
  }
  
}

class ThirdPage extends StatelessWidget{
  String mymsfg;
   ThirdPage(
      this.mymsfg,
      {super.key}

      );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mymsfg),
      ),
    );
  }

}
