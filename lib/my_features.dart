import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  Animatable<Color> background = TweenSequence<Color>([
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.deepPurple,
        end: Colors.deepPurpleAccent,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.purple,
        end: Colors.purpleAccent,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.pink,
        end: Colors.indigo,
      ),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
                title: Text('Second option', style: TextStyle(color:Colors.white),),
                backgroundColor: Colors.black,
            ),

            body: Container(
              color: background
                  .evaluate(AlwaysStoppedAnimation(_controller.value)),
                  child: Center(
                    child: Text('Hey there, it\`s my second animation',style: TextStyle(
                      color: Colors.indigo
                    ),),
                  ),
            ),
          );
        });
  }
}