import 'package:cab_pro/dashboard.dart';
import 'package:cab_pro/aboutus.dart';
import 'package:cab_pro/login1.dart';
import 'package:cab_pro/paymenthistory.dart';
import 'package:cab_pro/profile.dart';
import 'package:cab_pro/settings.dart';
import 'package:cab_pro/trips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

}

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            width: 240,
            height: 868,
            decoration: BoxDecoration(
              color: CupertinoColors.systemYellow,
              borderRadius: BorderRadius.only(topRight: Radius.circular(110)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45,right: 170),
                  child: MaterialButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>dash()));
                  },
                  child: Image(image: AssetImage('images/menuvertical.png',))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10,top: 40),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                ),
                Text('Yahya Pk',style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 30),),
          Container(
            height: 25,
            child: MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>prof()));
              },

              child: Text("Edit profile",style: TextStyle(fontSize: 20,color: Colors.red),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),),
          ),
                Padding(
                  padding: const EdgeInsets.only(right: 70,top: 40),
                  child: Container(
                    height: 30,
                    child: MaterialButton(

                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>trip()));
                        },
                        child: Text("Your Trips",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29),)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80,),
                  child: Container(
                    height: 35,
                    child: MaterialButton(

                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>setting()));
                        },
                        child: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29),)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70,),
                  child: Container(
                    height: 35,
                    child: MaterialButton(

                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>aboutus()));
                        },
                        child: Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29),)),
                  ),
                ),

                SizedBox(

                  child: Padding(
                    padding: const EdgeInsets.only(top: 310),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Icon(Icons.logout,size: 35,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 125,),
                          child: Container(
                            height: 50,
                            width: 300,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>log()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text("Logout",style: TextStyle(color: Colors.red,
                                    fontWeight: FontWeight.bold,fontSize: 26),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ),
            ],),
          ),
      ),
      );
  }
}
