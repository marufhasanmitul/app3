import 'dart:js';

import 'package:app3/Fragment/EmailFragment.dart';
import 'package:app3/Fragment/HomeFragment.dart';
import 'package:app3/Fragment/NotificatonFragment.dart';
import 'package:app3/Fragment/SearchFregment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      home: HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget {


  mySnacbar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  myAlertDialog(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
            child: AlertDialog(
              title: Text('Alert'),
              content: Text('Do You Want to Delete'),
              actions: [
                TextButton(onPressed: () {
                  mySnacbar('Delete Successfully', context);
                  Navigator.of(context).pop();
                }, child: Text('Yes')),
                TextButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: Text('No'))
              ],
            )
        );
      },
    );
  }

  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60)
  );

  var myItem = [
    {
      'img': 'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png',
      'title': 'Rabbil'
    },
    {
      'img': 'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png',
      'title': 'Rupom'
    },
    {
      'img': 'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png',
      'title': 'Hasn'
    },
    {
      'img': 'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png',
      'title': 'Khalid'
    },
    {
      'img': 'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png',
      'title': 'Khalid'
    },
    {
      'img': 'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png',
      'title': 'Khalid'
    }

  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(

          appBar: AppBar(
            title: Text('My First App'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.search),text: 'search',),
                Tab(icon: Icon(Icons.email),text: 'email',),
                Tab(icon: Icon(Icons.contact_mail),text: 'contact_mail',),
                Tab(icon: Icon(Icons.notification_important_outlined),text: 'notificaton',),
              ],
            ),


            titleSpacing: 90,
            toolbarOpacity: 1,
            elevation: 10,
            backgroundColor: Colors.green,
            actions: [
              IconButton(onPressed: () {
                mySnacbar('I am comment', context);
              }, icon: Icon(Icons.comment)),


              IconButton(onPressed: () {
                mySnacbar('I am Setting', context);
              }, icon: Icon(Icons.settings)),


              IconButton(onPressed: () {
                mySnacbar('I am Search', context);
              }, icon: Icon(Icons.search)),


              IconButton(onPressed: () {
                mySnacbar('I am Email', context);
              }, icon: Icon(Icons.email)),
            ],
          ),

          floatingActionButton: FloatingActionButton(
            onPressed: () {
              mySnacbar('I am Floating Action Button', context);
            },
            elevation: 10,
            child: Icon(Icons.add),

          ),

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'Message'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            onTap: (int index) {
              if (index == 0) {
                mySnacbar('I am Home Menu', context);
              }
              if (index == 1) {
                mySnacbar('I am Message Menu', context);
              }
              if (index == 2) {
                mySnacbar('I am Profile Menu', context);
              }
            },

          ),

          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    padding: EdgeInsets.all(0),
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.white),
                      accountName: Text(
                        'Maruf Hasan', style: TextStyle(color: Colors.black),),
                      accountEmail: Text('info@gmail.com',
                        style: TextStyle(color: Colors.black),),
                      currentAccountPicture: Image.network(""),
                      onDetailsPressed: () {
                        mySnacbar('I am Details Part', context);
                      },
                    )

                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    mySnacbar('I am Home Drawer', context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  onTap: () {
                    mySnacbar('I am Home Drawer', context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Eamil'),
                  onTap: () {
                    mySnacbar('I am Email Drawer', context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.phone_android_outlined),
                  title: Text('Phone'),
                  onTap: () {
                    mySnacbar('I am Phone Drawer', context);
                  },
                ),
              ],
            ),
          ),

          body:TabBarView(
            children: [
              HomeFragment(),
              SearchFregment(),
              EmailFragment(),
              EmailFragment(),
              NotificatonFragment(),


            ],
          ),




        )
    );
  }

}
