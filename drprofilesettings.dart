import 'dart:typed_data';

import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/dashboard.dart';
import 'package:cab_pro/drivermenu.dart';
import 'package:cab_pro/drprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){

}
class drprofset extends StatefulWidget {
  const drprofset({super.key});

  @override
  State<drprofset> createState() => _drprofsetState();
}

class _drprofsetState extends State<drprofset> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
    title: Text("Profile"),
    centerTitle: true,
    actions: [
    IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
    ],
    backgroundColor: Colors.black,
    leading: IconButton(
    onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>drmenu(currentIndex: 3,)));
    },
    icon: Icon(Icons.arrow_back_ios),
    ),
    ),
    backgroundColor: CupertinoColors.white,
    body: SwitchItem(),
    );
  }
}
class SwitchItem extends StatefulWidget {
  const SwitchItem({super.key});

  @override
  State<SwitchItem> createState() => _SwitchItemState();
}

class _SwitchItemState extends State<SwitchItem> {
  bool isSelected = false;
  void itemSwitch(bool value){
    setState(() {
      isSelected = !isSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
      backgroundColor: CupertinoColors.systemYellow,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
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
                      hintText: "rinshad",
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
                      hintText: "123456789",
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
                      hintText: "123@gmail.com",
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
                      prefixIcon: Icon(Icons.account_box_outlined, color: Colors.black,),
                      suffixIcon: Icon(Icons.edit, color: Colors.black,),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
                      hintText: "20",
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
                      hintText: "123456789",
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
                      prefixIcon: Icon(Icons.numbers, color: Colors.black,),
                      suffixIcon: Icon(Icons.edit, color: Colors.black,),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
                      hintText: "kl 53 t 3546",
                      fillColor: Colors.white70
                  ),),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
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
                          context, MaterialPageRoute(builder: (context) => drmenu(currentIndex: 3,)));
                    },
                    child: Text('Save', style: TextStyle(fontSize: 30),),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    color: Colors.black,
                    textColor: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}