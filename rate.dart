import 'package:cab_pro/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main(){

}
class rating extends StatefulWidget {
  const rating({super.key});

  @override
  State<rating> createState() => _ratingState();
}

class _ratingState extends State<rating> {
  double ratingValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemYellow,
      body: SingleChildScrollView(
        child: Column(
          children: [
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text('YOU ARRIVED',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              )),
            SizedBox(height: 50,),
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
                  padding: const EdgeInsets.only(top: 40,left: 80),
                  child: Icon(CupertinoIcons.star_fill,color: Colors.red,size: 27,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 42,left: 107),
                  child: Text('4.9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200,top: 10),
                  child: Text('FINAL COST',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300,top: 10),
                  child: Text('TIME TAKEN',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 210,top: 41),
                  child: Text('₹500.00',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 305,top: 41),
                  child: Text('20:10 Min',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 135),
                  child: Icon(CupertinoIcons.location_solid,size: 38,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27,top: 170),
                  child: Image(image: AssetImage('images/dotline.png',)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200,left: 25),
                  child: Icon(CupertinoIcons.location_solid,color: Colors.red,size: 38,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80,top: 140),
                  child: Text('Perinthalmanna',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80,top: 205),
                  child: Text('Malappuram',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300,top: 145),
                  child: Text('8:10 AM',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 210,left: 300),
                  child: Text('8:30 AM',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
              ],),
            SizedBox(height: 90,),
            Center(child: Text('HOW WAS YOUR TRIP?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Text('Your feedback will help us improving driving experience better',style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.bold,color: Colors.black54),),
            ),
         SizedBox(height: 20,),
    RatingBar.builder(
    initialRating: 0,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: false,
    itemCount: 5,
    itemPadding: EdgeInsets.symmetric(horizontal: 9.0),
    itemBuilder: (context, _) => Icon(
    Icons.star,
    color: Colors.red,
    ),
    onRatingUpdate: (rating) {
    print(rating);
    },
    ),
            SizedBox(height: 30,),
            Container(
              width: 380,
              child: TextField(
                minLines: 1,
                maxLines: 5,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)
                ),
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: "Your Review...",
                  hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 80,),
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
                child: Text('Submit', style: TextStyle(fontSize: 30),),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.black,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
