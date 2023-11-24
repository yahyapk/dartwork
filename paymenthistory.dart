import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/dashboard.dart';
import 'package:cab_pro/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 void main(){
 }
 class payment extends StatefulWidget {
   const payment({super.key});

   @override
   State<payment> createState() => _paymentState();
 }

 class _paymentState extends State<payment> {
  String groupValue = "Yes";

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: CupertinoColors.systemYellow,
       body: SingleChildScrollView(
         child: Column(
             children: [
         Padding(
         padding: const EdgeInsets.only(top: 50),
         child: Row(
           children: [
             Container(
               width: 45,
               child: MaterialButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>setting()));
               },
               child: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 40,)),
             ),
             SizedBox(width: 25,),
             Text("Payments",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
           ],
         ),
     ),
               Stack(
                 children: [
               Padding(
                 padding: const EdgeInsets.only(right: 320,top: 50),
                 child: Image(image: AssetImage('images/qr.png')),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 75,top: 65,bottom: 30),
                 child: Text('Scan payment QR code',style: TextStyle(
                     color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
               ),
               ],
     ),
               Divider(
                 color: Colors.grey,
                 height: 20,
                 thickness: 2,
                 indent: 10,
                 endIndent: 10,
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(right: 200),
                 child: Text('History',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),),
               ),
               SizedBox(height: 50,),
               Stack(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Icon((Icons.history),size: 100,color: Colors.black38,),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 100,bottom: 20),
                     child: Text('No Payment History',style: TextStyle(fontSize: 20,),),
                   )
                 ],
               ),
               Divider(
                 color: Colors.grey,
                 height: 20,
                 thickness: 2,
                 indent: 10,
                 endIndent: 10,
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(right: 30),
                 child: Text('Payment Methods',style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold,color: Colors.black),)
               ),
              SizedBox(height: 40,),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: CupertinoColors.white,
                      backgroundImage: AssetImage('images/visa1.png'),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 310),
                child: Radio(value: "Yes",
                    groupValue: groupValue,
                    onChanged: (value){
                  setState(() {
                    groupValue = value!;
                  });
                    }),
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 80),
                 child: Text('****2376',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
               ),
              ],),
               SizedBox(height: 20,),
               Stack(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 15),
                     child: CircleAvatar(
                       radius: 24,
                       backgroundColor: Colors.white,
                       backgroundImage: AssetImage('images/google.png'),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 310),
                     child: Radio(value: "No",
                         groupValue: groupValue,
                         onChanged: (value){
                           setState(() {
                             groupValue = value!;
                           });
                         }),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 80),
                     child: Text('Google Pay',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                   ),
                 ],),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 43,top: 15),
                     child: Icon(Icons.add_circle_outline,size: 50,),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 15,left: 10),
                     child: Text('Add Payment Method',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                   )
                 ],
               ),
               SizedBox(height: 90,),
               Container(
                 decoration: BoxDecoration(
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black54,
                         blurRadius: 80,
                         spreadRadius: 1,
                         offset: Offset(0,10),
                       )
                     ]
                 ),
                 child: Padding(
                   padding: const EdgeInsets.only(bottom: 30),
                   child: MaterialButton(

                     minWidth: 370,
                     height: 50,
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>dash()));

                     },


                     child: Text('Save',style: TextStyle(fontSize: 30),),

                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)),
                     color: Colors.black,
                     textColor: Colors.white,

                   ),
                 ),
               ),
     ],),
       ),
     );
   }
 }
