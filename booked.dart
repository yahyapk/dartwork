import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  
}
 class home extends StatefulWidget {
   const home({super.key});
 
   @override
   State<home> createState() => _homeState();
 }
 
 class _homeState extends State<home> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: CupertinoColors.systemYellow,
       body: Column(
         children: [
           Center(
             child: Padding(
               padding: const EdgeInsets.only(top: 150),
               child: Text('Your Ride Is Confirmed',style: TextStyle(fontWeight: FontWeight.bold,
               fontSize: 30
               ),),
             ),
           ),
           SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.only(left: 35),
             child: Text('Thank you for your booking.'
                 'Your Driver will contact you as soon as possible',style: TextStyle(fontSize: 23),),
           ),
           SizedBox(height: 10,),
           Image(image: AssetImage('images/book.png')),
           SizedBox(height: 60,),
           Container(
             decoration: BoxDecoration(
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black,
                     blurRadius: 20,
                     spreadRadius: 1,
                     offset: Offset(0, 6),
                   )
                 ]
             ),
             child: MaterialButton(
               minWidth: 200,
               height: 50,
               onPressed: () {
                 Navigator.push(
                     context, MaterialPageRoute(builder: (context) => dash()));
               },
               child: Text('Home', style: TextStyle(fontSize: 30),),
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
 