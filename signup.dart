import 'dart:convert';

import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/login1.dart';
import 'package:cab_pro/otp.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'connect.dart';
 void main(){
   
 }
 class sign extends StatefulWidget {
   const sign({super.key});
 
   @override
   State<sign> createState() => _signState();
 }

 class _signState extends State<sign> {

   bool passwordObscured = true;
   bool password = true;
   var uname = TextEditingController();
   var pass = TextEditingController();
   var cpass = TextEditingController();
   var aadharid = TextEditingController();
   var email = TextEditingController();
   var phone = TextEditingController();
   var _formKey = GlobalKey<FormState>();

   Future<void> Register() async {
     var data = {
       'username': uname.text,
       'password': pass.text,
       'aadharid': aadharid.text.toString(),
       'emails': email.text,
       'phoneno': phone.text.toString(),
     };
     print("inside send data 1-----------$data");
     var response = await post(Uri.parse('${Con.url}user.php'), body: data);
     print(response.body);
     print(response.statusCode);
     print("inside send data");
     var res=jsonDecode(response.body);
     if (res['result'] == 'success') {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>otpass()));
       ScaffoldMessenger.of(context)
           .showSnackBar(SnackBar(content: Text('Registered....')));
       Navigator.pop(context);
     } else {
       ScaffoldMessenger.of(context)
           .showSnackBar(SnackBar(content: Text('Failed to register !!....')));
       Navigator.pop(context);
     }
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SingleChildScrollView(
         child: Form(
           key: _formKey,
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(right: 340,top: 40),
                 child: MaterialButton(
                   minWidth: 40,
                     onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>log()));
                     },
                     child: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 40,)),
               ),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 50,left: 90),
                     child: Text("Let's",style: TextStyle(fontSize: 45),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 50,left: 5),
                     child: Text("Sign Up",style: TextStyle(fontSize: 45,color: Colors.yellow,fontFamily: 'Oswald'),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 60,left: 2),
                     child: Text("!",style: TextStyle(fontSize: 45,color: Colors.black),),
                   )
                 ],
               ),
               SizedBox(height: 50,),
               Container(
                 width: 370,
                 child: TextFormField(
                   validator: (value){
                     if (value == null || value.isEmpty){
                       return 'Name Required';
                     }
                   },
                   controller: uname,
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.account_circle_outlined,color: Colors.black,),
                     border: OutlineInputBorder(
                       borderSide: BorderSide.none,
                       borderRadius: BorderRadius.circular(20),),
                     filled: true,
                     hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                     hintText: "Username",
                     fillColor: Colors.black12,
                 ),),
               ),
               SizedBox(height: 20,),
               Container(
                 width: 370,
                 child: TextFormField(
                   controller: pass,
                   validator: (value) {
                     if (value!.length < 6){
                       return 'Password should be t least 6 characters';
                     }
                   },
                  obscureText: passwordObscured,
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.lock_outline,color: Colors.black,),
                     suffixIcon: IconButton(
                       onPressed: (){
                         setState(() {
                           passwordObscured = !passwordObscured;
                         });
                       },
                       icon: Icon(
                         passwordObscured ?
                         Icons.visibility_off_outlined : Icons.visibility,color: Colors.black,),),
                     border: OutlineInputBorder(
                       borderSide: BorderSide.none,
                       borderRadius: BorderRadius.circular(20),),
                     filled: true,
                     hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                     hintText: "Password",
                     fillColor: Colors.black12
                 ),),
               ),
               SizedBox(height: 20,),
               Container(
                 width: 370,
                 child: TextFormField(
                   controller: cpass,
                   validator: (value){
                     if (value == null || value.isEmpty){
                       return 'Confirm Password Required';
                     }
                   },
                   obscureText: password,
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.lock_outline,color: Colors.black,),
                     suffixIcon: IconButton(
                       onPressed: (){
                         setState(() {
                           password = !password;
                         });
                       },
                       icon: Icon(
                         password ?
                         Icons.visibility_off_outlined : Icons.visibility,color: Colors.black,),),
                     border: OutlineInputBorder(
                       borderSide: BorderSide.none,
                       borderRadius: BorderRadius.circular(20),),
                     filled: true,
                     hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                     hintText: "Confirm Password",
                     fillColor: Colors.black12
                 ),),
               ),
               SizedBox(height: 20,)
               ,Container(
                 width: 370,
                 child: TextFormField(
                   controller: aadharid,
                   validator: (value){
                     if (value!.length !=12){
                       return 'aadhar Number should be 12 numbers';
                     }
                   },
                   decoration: InputDecoration(
                     prefixIcon:Container(
                         width: 10,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 12,right: 10),
                           child: SizedBox(
                               width: 100,
                               child: Image(image: AssetImage('images/idcard.png',),)),
                         )),
                     border: OutlineInputBorder(
                       borderSide: BorderSide.none,
                       borderRadius: BorderRadius.circular(20),),
                     filled: true,
                     hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                     hintText: "Aadhaar Number",
                     fillColor: Colors.black12
                 ),),
               ),
     SizedBox(height: 20,),
            Container(
     width: 370,
     child: TextFormField(
       controller: email,
       validator: (value) {
           if (value == null || value.isEmpty) {
             return 'Email required';
           }
           String emailPattern =
               r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'; // Basic email regex pattern
           RegExp regExp = RegExp(emailPattern);
           if (!regExp.hasMatch(value)) {
             return 'Invalid email address';
           }

           return null;
       },
     decoration: InputDecoration(
     prefixIcon: Icon(Icons.mail_outline,color: Colors.black,),
     border: OutlineInputBorder(
     borderSide: BorderSide.none,
     borderRadius: BorderRadius.circular(20),),
     filled: true,
     hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
     hintText: "E-mail",
     fillColor: Colors.black12
     ),),
     ),
               SizedBox(height: 20,),
               Container(
                 width: 370,
                 child: TextFormField(
                   controller: phone,
                   validator: (value) {
                     if (value!.length != 10) {
                       return 'Phone number should be 10 digits.';
                     }
                   },
                   decoration: InputDecoration(
                       prefixIcon: Icon(Icons.phone_outlined,color: Colors.black,),
                       border: OutlineInputBorder(
                         borderSide: BorderSide.none,
                         borderRadius: BorderRadius.circular(20),),
                       filled: true,
                       hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                       hintText: "Phone Number",
                       fillColor: Colors.black12
                   ),),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 60,left: 250,bottom: 20),
                 child: Row(
                   children: [
                     Container(
                       decoration: BoxDecoration(
                           boxShadow: [
                             BoxShadow(color: Colors.black,
                               blurRadius: 12,
                               spreadRadius: -2,
                               offset: Offset(0,6),
                             )
                           ]
                       ),
                       child: MaterialButton(
                         minWidth: 140,
                         height: 50,
                         onPressed: (){
                           if (_formKey.currentState!.validate()) {
                             if (pass.text == cpass.text) {
                               setState(() {
                                 Register();
                                 print('ready to add fields');
                               });
                             } else {
                               ScaffoldMessenger.of(context).showSnackBar(
                                   SnackBar(
                                       content: Text(
                                           'Password mismatch found....')));
                             }
                           }
                           // else {
                           //   ScaffoldMessenger.of(context).showSnackBar(
                           //       SnackBar(
                           //           content:
                           //               Text('All fields required !!!....')));
                           // }
                         },

                         child: Text("OTP",style: TextStyle(fontSize: 40,),),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                         color: Colors.yellow,
                         textColor: Colors.black,
                       ),
                     ),
                   ],
                 ),
               ),
             ],
           ),
         ),
       ),
     );
   }
 }
 