import 'package:cab_pro/accepted.dart';
import 'package:cab_pro/canceled.dart';
import 'package:cab_pro/completed.dart';
import 'package:cab_pro/upcoming.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  
}

class trip extends StatefulWidget {
  const trip({super.key});

  @override
  State<trip> createState() => _tripState();
}

class _tripState extends State<trip> {
  int myIndex = 0;
  final screens = [
    coming(),
    accept(),
    complete(),
    cancel(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemYellow,
     body: IndexedStack(
       index: myIndex,
         children: screens,
     ),
     bottomNavigationBar: BottomNavigationBar(
       selectedItemColor: CupertinoColors.systemYellow,
       selectedFontSize: 20,
       unselectedFontSize: 17,
       unselectedItemColor: Colors.white,
       showUnselectedLabels: true,
       backgroundColor: Colors.black,
       type: BottomNavigationBarType.fixed,
       currentIndex: myIndex,



       onTap: (index){
         setState(() {

           myIndex = index;
         });
       },

       items: [
        BottomNavigationBarItem(icon: Icon(Icons.upcoming,color: Colors.white,size: 30,),
        label: "UPCOMING"
        ),
         BottomNavigationBarItem(icon: Icon(Icons.task_alt,color: Colors.white,size: 30,),
           label: "ACCEPTED",
         ),
         BottomNavigationBarItem(icon: Icon(Icons.gpp_good,color: Colors.white,size: 30,),
             label: "COMPLETED",
         ),
         BottomNavigationBarItem(icon: Icon(Icons.cancel_outlined,color: Colors.white,size: 30
           ,),
             label: "CANCELED"
         ),

     ],),
    );
  }
}
