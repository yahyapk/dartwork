import 'package:cab_pro/Menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 void main(){

 }
  class book extends StatefulWidget {
    const book({super.key});

    @override
    State<book> createState() => _bookState();
  }

  class _bookState extends State<book> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
          Stack(
          children: [
          Padding(
          padding: const EdgeInsets.only(left: 20,top: 40),
          child: CircleAvatar(
            radius: 37,
            backgroundColor: CupertinoColors.systemYellow,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13,top: 46),
          child: MaterialButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>menu()));
          },
              child: Icon(CupertinoIcons.line_horizontal_3,size: 60,)),
        ),
      ],)
      ],),
        ),
      );
    }
  }
