import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'connect.dart';
void main(){


}
class newride extends StatefulWidget {
  const newride({super.key});

  @override
  State<newride> createState() => _newrideState();
}

class _newrideState extends State<newride> {

  Future<void> accept_reject() async {
    var data = {
      'req_id': '17',
      'driver_id': '2',
      'request_status': request_status,

    };
    print("inside send data 1-----------$data");
    var response = await post(Uri.parse('${Con.url}accept_reject_request.php'), body: data);
    print(response.body);
    print(response.statusCode);
    print("inside send data");
    var res=jsonDecode(response.body);
    if (res['result'] == 'success') {
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>otpass()));
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Request $request_status')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Request $request_status')));
    }
  }
  var request_status;
  var flag = 0;
  @override
  void initState() {
    super.initState();

    print('inside init fn');
    getData();
    setState(() {});
  }

  Future<dynamic> getData() async {
    print('inside getData fn');
    var data = {
      'cabType': 'deluxe',
    };
    print(data);
    var response =
    await post(Uri.parse('${Con.url}viewRequest_driver.php'), body: data);
    print(response.body);
    print(response.statusCode);
    print('Response: ${response.body}');

    jsonDecode(response.body)[0]['result'] == 'success' ? flag = 1 : flag = 0;

    return jsonDecode(response.body);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  trailing: Text("8:10 AM",style: TextStyle(fontSize: 18),),

                ),
                ListTile(

                  title: Text("Dropoff: malappuaram",style: TextStyle(fontSize: 20),),
                  trailing: Text("9:10 AM",style: TextStyle(fontSize: 18),),

                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28,bottom: 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),minimumSize: Size(150, 50),backgroundColor: Colors.red),
                          onPressed: (){
                            setState(() {
                              request_status='rejected';
                              accept_reject();
                            });
                          },
                          child: Wrap(
                            children: [
                              Icon(Icons.cancel,size: 28,),
                              SizedBox(width: 10,),
                              Text("Reject",style: TextStyle(fontSize: 23),),
                            ],
                          )),
                    ),
                    SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),minimumSize: Size(150, 50),backgroundColor: Colors.green,),
                          onPressed: (){
                            setState(() {
                              request_status='accepted';
                              accept_reject();
                            });
                          },
                          child: Wrap(
                            children: [
                              Icon(Icons.task_alt,size: 28,),
                              SizedBox(width: 10,),
                              Text("Accept",style: TextStyle(fontSize: 23),),
                            ],
                          )),
                    ),
                  ],
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
