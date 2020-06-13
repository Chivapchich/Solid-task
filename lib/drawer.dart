import 'package:flutter/material.dart';
import 'package:test_work1/my_features.dart';
import 'main.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return Drawer(

          child: new Container(
            color: Color.fromRGBO(18, 10, 67,1),
            child: ListView(

                padding: EdgeInsets.zero,

                children: <Widget>[

                  Container(
                    height: 87.0,
                    child: DrawerHeader(
                      child: Text("Menu",style: TextStyle(color: Colors.white),),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
          Color(0xFF5337ff),
           Color(0xFF8131ff),
            Color(0xFFbd27ff),
        ]),
                        color: Color.fromRGBO(93, 38, 199,1),

                      ),

                    ),
                  ),
                  ListTile(
                      title: new Text("Test work",style: TextStyle(color: Colors.white),),
                      leading: Icon(Icons.menu,color: Color.fromRGBO(212, 27, 179,1),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>MyApp(),
                        ));
                      }
                  ),

                  ListTile(
                      title: new Text("Second Option",style: TextStyle(color: Colors.white),),
                      leading: Icon(Icons.people,color: Color.fromRGBO(212, 27, 179,1),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder:(context)=>MyHomePage(),
                        ));
                      }
                  ),
                ]

            ),
          ),
        );
  }
}