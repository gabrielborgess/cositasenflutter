import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home:Home()
    );
  }
}

class Home extends StatefulWidget{
  @override
_HomeState createState()=>_HomeState();
}

class _HomeState extends State<Home>{
  double _containerWidth=50;
  double _containerHeight=50;
  Color _containerColor = Colors.lightBlue;
BorderRadiusGeometry _containerBorderRadius=BorderRadius.circular(8);

void _AnimarContenedor(){
  final random=Random();
  setState(() {
    _containerWidth=random.nextInt(300).toDouble();
    _containerHeight=random.nextInt(300).toDouble();
    _containerColor=Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    _containerBorderRadius=BorderRadius.circular(
      random.nextInt(100).toDouble()
    );
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: AnimatedContainer(
              width: _containerWidth,
              height: _containerHeight,
              decoration: BoxDecoration(
                color:_containerColor,
                  borderRadius: _containerBorderRadius
              ),
              duration: Duration(seconds: 1),
              curve:Curves.fastOutSlowIn,
          ),
        ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _AnimarContenedor,
     ),
    );
  }
}