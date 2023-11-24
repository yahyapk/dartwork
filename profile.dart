import 'dart:typed_data';

import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  
}
class prof extends StatefulWidget {
  const prof({super.key});

  @override
  State<prof> createState() => _profState();
}

class _profState extends State<prof> {


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
                    width: 50,
                    child: MaterialButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => menu()));
                    },
                        child: Icon(
                          Icons.arrow_back_ios_new, color: Colors.black,
                          size: 40,)),
                  ),
                  SizedBox(width: 25,),
                  Text("Profile", style: TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 15),
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage("images/profile.jpg"),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160, left: 140),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 132, top: 165),
                  child: Container(
                    height: 30,
                    width: 15,
                    child: MaterialButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.edit, color: Colors.black, size: 35,)),
                  ),
                )
              ],),
            SizedBox(height: 25,),
            Container(
              width: 380,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.account_circle_outlined, color: Colors.black,),
                    suffixIcon: Icon(Icons.edit, color: Colors.black,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
                    hintText: "Username",
                    fillColor: Colors.white70
                ),),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 380,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.black,),
                    suffixIcon: Icon(Icons.edit, color: Colors.black,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
                    hintText: "Password",
                    fillColor: Colors.white70
                ),),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 380,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline, color: Colors.black,),
                    suffixIcon: Icon(Icons.edit, color: Colors.black,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
                    hintText: "E-mail",
                    fillColor: Colors.white70
                ),),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 380,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone, color: Colors.black,),
                    suffixIcon: Icon(Icons.edit, color: Colors.black,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
                    hintText: "Phone Number",
                    fillColor: Colors.white70
                ),),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 380,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_call, color: Colors.red,),
                    suffixIcon: Icon(Icons.edit, color: Colors.black,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
                    hintText: "Emergency Contact Number",
                    fillColor: Colors.white70
                ),),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 12,
                      spreadRadius: 1,
                      offset: Offset(0, 6),
                    )
                  ]
              ),
              child: MaterialButton(
                minWidth: 380,
                height: 50,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => dash()));
                },
                child: Text('Save', style: TextStyle(fontSize: 30),),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.black,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

