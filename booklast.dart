import 'package:cab_pro/booked.dart';
import 'package:cab_pro/bookpayment.dart';
import 'package:cab_pro/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

}
class boklast extends StatefulWidget {
  const boklast({super.key});

  @override
  State<boklast> createState() => _boklastState();
}

class _boklastState extends State<boklast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemYellow,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,),
                child: Container(
                  width: 50,
                  child: MaterialButton(

                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => pay()));
                      },
                      child: Icon(Icons.arrow_back,size: 40,color: Colors.black,)),
                ),
              ),
              SizedBox(width: 25,),
              Padding(
                padding: const EdgeInsets.only(top: 30,),
                child: Text('Your driver is coming in ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              )
            ],
          ),
          SizedBox(height: 30,),
          Stack(
           children: [
          Padding(
            padding: const EdgeInsets.only(right: 310),
            child: CircleAvatar(
            radius: 35,
    backgroundImage: AssetImage("images/profile.jpg"),),
          ),
             Padding(
               padding: const EdgeInsets.only(left: 80,top: 5),
               child: Text('dilshad',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 175),
               child: Icon(CupertinoIcons.location_solid,color: Colors.red,size: 35,),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 5,left: 205),
               child: Text('3Mins',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 40,left: 80),
               child: Icon(CupertinoIcons.star_fill,color: Colors.red,size: 27,),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 42,left: 107),
               child: Text('4.9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 310,),
               child: Image(image: AssetImage('images/car4.png')),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 230,top: 50),
               child: Text('CAR NO -',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 50,left: 300),
               child: Text('KL 53 U 1234',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
             )
    ],),
          SizedBox(height: 30,),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Text('TRIP',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 270),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dash()));
                }, child: Text('EDIT TRIP',style: TextStyle(color: Colors.red,fontSize: 25,
                fontWeight: FontWeight.bold),)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 60),
                child: Icon(CupertinoIcons.location_solid,size: 38,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27,top: 97),
                child: Image(image: AssetImage('images/dotline.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 121,left: 25),
                child: Icon(CupertinoIcons.location_solid,color: Colors.red,size: 38,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80,top: 65),
                child: Text('Perinthalmanna',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80,top: 125),
                child: Text('Malappuram',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300,top: 70),
                child: Text('8:10 AM',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 127,left: 300),
                child: Text('9:00 AM',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 200),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/cash.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90,top: 205),
                child: Text('Cash On Pay',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              ],),
              SizedBox(height: 330),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
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
                    minWidth: 190,
                    height: 50,
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => dash()));
                    },
                    child: Text('Cancel', style: TextStyle(fontSize: 30),),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    color: Colors.red,
                    textColor: Colors.white,
                  ),
                ),
                    SizedBox(width: 15,),
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
                        minWidth: 190,
                        height: 50,
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => home()));
                        },
                        child: Text('BOOK NOW', style: TextStyle(fontSize: 30),),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        color: Colors.black,
                        textColor: Colors.white,
                      ),
                    )
            ],
          ),
              )
        ],
      ),
    );
  }
}
