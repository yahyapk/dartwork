import 'package:flutter/material.dart';

void main(){}
class draccept extends StatefulWidget {
  const draccept({super.key});

  @override
  State<draccept> createState() => _dracceptState();
}

class _dracceptState extends State<draccept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  color: Colors.grey,
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
                            child: Text('Rahul',style: TextStyle(fontSize: 25,color: Colors.red),),
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
