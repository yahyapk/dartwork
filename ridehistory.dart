import 'package:flutter/material.dart';
void main(){
  
}
class ridehist extends StatefulWidget {
  const ridehist({super.key});

  @override
  State<ridehist> createState() => _ridehistState();
}

class _ridehistState extends State<ridehist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  color: Colors.black12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("images/profile.jpg"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Salim',style: TextStyle(fontSize: 25,color: Colors.red),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170),
                            child: Column(
                              children: [
                                Text("Date",style: TextStyle(color: Colors.red,fontSize: 20),),
                                Text("12-2-2022"),
                              ],
                            ),
                          )
                        ],
                      ),
                      ListTile(

                        title: Text("PickUp: perinthalmanna",style: TextStyle(fontSize: 20),),
                        trailing: Text("8:10",style: TextStyle(fontSize: 18),),

                      ),
                      ListTile(

                        title: Text("Dropoff: malappuaram",style: TextStyle(fontSize: 20),),
                        trailing: Text("9:10",style: TextStyle(fontSize: 18),),

                      ),
                      ListTile(
                          leading: Text("Your Earning From This ride:",style: TextStyle(fontSize: 20),),
                          trailing:Text("Rs:200",style: TextStyle(fontSize: 18,color: Colors.green),)
                      )
                    ],
                  )
              ),
            );
          },
          itemCount: 2,
        )
    );
  }
}
