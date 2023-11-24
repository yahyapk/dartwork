import 'package:cab_pro/driverlogin.dart';
import 'package:cab_pro/login1.dart';
import 'package:flutter/material.dart';
 void main(){

 }
 class Log1 extends StatefulWidget {
   const Log1({super.key});

   @override
   State<Log1> createState() => _Log1State();
 }

 class _Log1State extends State<Log1> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       body: Column(
             children: [

               Padding(
                 padding: const EdgeInsets.only(top: 320,left: 20),
                 child: Text('Which one you Prefer!...',style: TextStyle(fontSize: 35),),
               ),
               SizedBox(
                 height: 30,
               ),
               Container(
                 decoration: BoxDecoration(
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black,
                       blurRadius: 12,
                       spreadRadius: 1,
                      offset: Offset(0,10),
                     )
                   ]
                 ),
                 child: MaterialButton(

                   minWidth: 250,
                     height: 50,
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>drlog()));
                     },


                   child: Text('Driver',style: TextStyle(fontSize: 30),),

                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20)),
                   color: Colors.yellow,
                   textColor: Colors.black,

                 ),
               ),
               SizedBox(
                 height: 30,
               ),
               Container(
     decoration: BoxDecoration(
     boxShadow: [
     BoxShadow(
     color: Colors.black,
     blurRadius: 12,
     spreadRadius: 1,
     offset: Offset(0,6),
     )
     ]
     ),
                 child: MaterialButton(
                   minWidth: 250,
                   height: 50,
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>log()));
                   },
                   child: Text('User',style: TextStyle(fontSize: 30),),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20)
                   ),
                   color: Colors.black,
                   textColor: Colors.white,
                 ),
               )
             ],
           ),
         );
   }
 }
