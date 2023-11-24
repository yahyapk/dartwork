import 'dart:convert';

import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/completed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'connect.dart';
void main(){

}
class coming extends StatefulWidget {
  const coming({super.key});

  @override
  State<coming> createState() => _comingState();
}

class _comingState extends State<coming> {
  var request_status;
  var flag = 0;
  @override
  Future<void> payment() async {
    var data = {
      'user_id':'2',
      'request_status': request_status,
    };
    print("inside send data 1-----------$data");
    var response = await post(Uri.parse('${Con.url}viewRequest_accepted_user.php'), body: data);
    print(response.body);
    print(response.statusCode);
    print("inside send data");
    var res=jsonDecode(response.body);
    if (res['result'] == 'success') {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>complete()));
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('$request_status')));
      Navigator.pop(context);
    }
  }
  void initState() {
    super.initState();

    print('inside init fn');
    getData();
    setState(() {});
  }

  Future<dynamic> getData() async {
    print('inside getData fn');
    var data = {
      'user_id': '12',
    };
    print(data);
    var response =
    await post(Uri.parse('${Con.url}viewRequest_accepted_user.php'), body: data);
    print(response.body);
    print(response.statusCode);
    print('Response: ${response.body}');

    jsonDecode(response.body)[0]['result'] == 'success' ? flag = 1 : flag = 0;

    return jsonDecode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if(snapshot.hasError){print(snapshot.error);}
            if(!snapshot.hasData || snapshot.data.length==0){
              Center(child: Text('No data Found....'),);
            }



            return flag==1? ListView.builder(
               itemCount: snapshot.data.length,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  SizedBox(width: 10,),
                                  Text(snapshot.data[index]['username'],style: TextStyle(fontSize: 25,color: Colors.red),),

                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                     // Text("Date",style: TextStyle(color: Colors.red,fontSize: 20),),
                                      Text("${snapshot.data[index]['pikdate']}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold
                                      ,fontSize: 18),),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          ListTile(

                            title: Text("PickUp: ${snapshot.data[index]['source']}",style: TextStyle(fontSize: 20),),
                            trailing: Text(snapshot.data[index]['piktime'],style: TextStyle(fontSize: 18),),

                          ),
                          ListTile(

                            title: Text("Dropoff: ${snapshot.data[index]['destn']}",style: TextStyle(fontSize: 20),),
                            trailing: Text(snapshot.data[index]['droptime'],style: TextStyle(fontSize: 18),),

                          ),
                          ListTile(

                            title: Text("Driver Ph ",style: TextStyle(fontSize: 20),),
                            trailing: Text(snapshot.data[index]['phone'],style: TextStyle(fontSize: 18),),

                          ),
                          ListTile(

                            title: Text("Vehicle No",style: TextStyle(fontSize: 20),),
                            trailing: Text(snapshot.data[index]['vehicleno'],style: TextStyle(fontSize: 18),),

                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)
                                  ),minimumSize: Size(150, 50),backgroundColor: Colors.green,),
                                  onPressed: (){},
                                  child: Wrap(
                                    children: [
                                      Icon(Icons.task_alt,size: 30,),
                                      SizedBox(width: 10,),
                                      Text("Complete",style: TextStyle(fontSize: 25),),
                                    ],
                                  )),
                            ),
                          )
                        ],
                      )
                  ),
                );
              },

            ):
                Center(child: CircularProgressIndicator(),)

            ;
          }
        )
    );
  }
}
