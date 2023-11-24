import 'package:cab_pro/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main (){
  
}
class otsub extends StatefulWidget {
  const otsub({super.key});

  @override
  State<otsub> createState() => _otsubState();
}

class _otsubState extends State<otsub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Text("OTP",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: CupertinoColors.systemYellow),),
          )),
          Text("Verification!",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,),
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("OTP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: CupertinoColors.systemYellow),),
              ),SizedBox(width: 5,),
              Text("Verification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 5,),
              Text("Succesfully",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
              SizedBox(width: 3,),
              Text("!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)
            ],
          ),
          SizedBox(height: 15,),
          Image(image: AssetImage('images/otpverify.png')),
          SizedBox(height: 34,),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 12,
                    spreadRadius: 1,
                    offset: Offset(0,5),
                  )
                ]
            ),
            child: MaterialButton(
              minWidth: 380,
              height: 50,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>dash()));
              },
              child: Text("Let's Go",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
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
