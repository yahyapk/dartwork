import 'package:cab_pro/Notifications.dart';
import 'package:cab_pro/drabout.dart';
import 'package:cab_pro/driverlogin.dart';
import 'package:cab_pro/drprofilesettings.dart';
import 'package:cab_pro/drratings.dart';
import 'package:flutter/material.dart';
void main(){

}
class drprof extends StatefulWidget {
  const drprof({super.key});

  @override
  State<drprof> createState() => _drprofState();
}

class _drprofState extends State<drprof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 40),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage("images/profile.jpg"),fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 130,top: 55),
                        child: Text("Yahya pk",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 120),
                    child: Text("KL 53 T 0543",style: TextStyle(fontSize: 17,color: Colors.red),),
                  ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 350,top: 60),
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>drprofset()));
                    }, icon: Icon(Icons.arrow_forward_ios,size: 40,),),
                  ),
                ],
              ),


            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>notif()));
                    },
                    child: Wrap(
                      children: [
                        Icon(Icons.notifications_outlined,size: 30,),
                        SizedBox(width: 10,),
                        Text("Notifications",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
               Padding(
                 padding: const EdgeInsets.only(left: 350,top: 4),
                 child: IconButton(onPressed: (){

                 }, icon: Icon(Icons.arrow_forward_ios,size: 30,)),
               ),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Divider(
                    color: Colors.grey,
                    height: 20,
                    thickness: 2,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 65),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>drrating()));
                    },
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Icon(Icons.rate_review_outlined,size: 30,),
                        ),
                        SizedBox(width: 10,),
                        Text("Ratings",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 350,top: 55),
                  child: IconButton(onPressed: (){

                  }, icon: Icon(Icons.arrow_forward_ios,size: 30,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Divider(
                    color: Colors.grey,
                    height: 20,
                    thickness: 2,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 120),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>drabout()));
                    },
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Icon(Icons.info_outline,size: 30,),
                        ),
                        SizedBox(width: 10,),
                        Text("About",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 350,top: 110),
                  child: IconButton(onPressed: (){},
                      icon: Icon(Icons.arrow_forward_ios,size: 30,)),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>drlog()));
                    },
                    child: Wrap(
                      children: [
                        Icon(Icons.logout_outlined,size: 33,),
                        SizedBox(width: 10,),
                        Text("Logout",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.red),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 350,top: 4),
                  child: IconButton(onPressed: (){
                  }, icon: Icon(Icons.arrow_forward_ios,size: 30,)),
                ),

              ],),
          ),
        ],),
    );
  }
}
