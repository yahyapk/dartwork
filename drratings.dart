import 'package:cab_pro/drivermenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){


}
class drrating extends StatefulWidget {
  const drrating({super.key});

  @override
  State<drrating> createState() => _drratingState();
}

class _drratingState extends State<drrating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text("Rating"),
    centerTitle: true,
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12,
                ),

                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 310,top: 5),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("images/profile.jpg"),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80,top: 25),
                      child: Text('Rahul',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 170),
                      child: Text("Rating Earned:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 41,left: 210),
                      child: Text('3.9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 320,top: 10),
                      child: Text('DATE',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 305,top: 41),
                      child: Text('18-1-2023',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 95),
                      child: Text("Ride:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 170,left: 15),
                        child: Text("review:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100,top: 95),
                      child: Text('Perinthalmanna to Kozhikode',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110,top: 170),
                      child: Text('I had the pleasure of riding with Drivers Name today, and I must say it was one of the best cab experiences Ive had. From the moment they picked me up to the drop-off, everything was top-notch.',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                  ],),
              ),
              Divider(
                color: Colors.grey,
                height: 20,
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
      Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black12,
          ),

          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 310,top: 5),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("images/profile.jpg"),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80,top: 25),
                child: Text('salim',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,left: 170),
                child: Text("Rating Earned:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 41,left: 210),
                child: Text('1.9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 320,top: 10),
                child: Text('DATE',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 305,top: 41),
                child: Text('12-1-2023',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 95),
                child: Text("Ride:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 170,left: 15),
                  child: Text("review:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100,top: 95),
                child: Text('Perinthalmanna to Malappuram',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110,top: 170),
                child: Text('I recently had a ride with [Drivers Name, and unfortunately, it was a disappointing experience.',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
            ],),
      ),
            ],
          ),
        ),
      ),
    );
  }
}
