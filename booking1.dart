import 'package:cab_pro/Menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
   
}
 class book1 extends StatefulWidget {
   const book1({super.key});
 
   @override
   State<book1> createState() => _book1State();
 }
 
 class _book1State extends State<book1> {
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

               ],),
           ],),
       ),
     );
   }
 }
 