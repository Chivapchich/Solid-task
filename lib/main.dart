import 'package:flutter/material.dart';
import 'dart:math';

import 'package:test_work1/drawer.dart';

   void main()=> runApp(MyApp());

     class MyApp extends StatefulWidget {
        _MyAppState createState() => _MyAppState();
      }

     class _MyAppState extends State<MyApp> {
              //LIST OF COLORS
     List colors = [Colors.red, Colors.green, Colors.yellow, Colors.white,Colors.amberAccent,Colors.brown,Colors.yellow,Colors.transparent,Colors.pink,Colors.purple];
            //random class
         Random random = new Random();

            int index = 0;
                //random changeIndex
            void changeIndex() {
              setState(() => index = random.nextInt(10));
            }

            @override
            Widget build(BuildContext context) {
              return MaterialApp(
                home: Scaffold(
                    appBar: AppBar(
                      
                      title: Text('Title for presentation',style: TextStyle(
                      color: Colors.white,
                      ),
                      ),
                      backgroundColor: Colors.black,
                      
                    ),
                    drawer: MyDrawer(),
                body: Center(
                  child: ButtonTheme(
                      minWidth: 1000,
                      height: 1000,
                  child: RaisedButton(
                  
                  onPressed: () => changeIndex(),
                  child: Text('Hey there'),
                  color: colors[index],
                ),
                ),
                ),
                )
              );
            
              
            }
          }
