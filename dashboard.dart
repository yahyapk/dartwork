import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/bookpayment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'connect.dart';
import 'myRequests.dart';

void main(){


}
class dash extends StatefulWidget {
  const dash({super.key});
  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {
  var flag=0;
  var res;
  Map<String,bool> visibilityMap={
    'standard':false,
    'deluxe':false,
    'shared':false,
    'platinum':false,
  };

  Future<void> getcabtype() async {print('inside getData fn');


    print("inside send data 1");
    var response = await get(Uri.parse('${Con.url}getcabtypes.php'),);
    print(response.body);
    print(response.statusCode);
    print("inside send data");
     res=jsonDecode(response.body);
    print('RES------------$res');
    if (res[0]['result'] == 'success') {
      flag=1;
      for(Map<String,dynamic> map in res) {
        print('map---------$map');
        for (String value in map.values) {
          print('value-------$value' );
          if (map.containsValue(value)) {
            visibilityMap[value] = true;
            print('visibilityMap------------$visibilityMap[value]');
          }
        }
      }
      print(visibilityMap);

    } else {

    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getcabtype();
  }
  TextEditingController source = TextEditingController();
  TextEditingController destination = TextEditingController();
  TextEditingController _datecontroller = TextEditingController();
  TextEditingController _timecontroller = TextEditingController();
  var formattime;
  var cabType,price;

  TimeOfDay _selectedTime = TimeOfDay.now();
  DateTime _selectedDate = DateTime.now();
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(context: context, initialTime: _selectedTime);
    if(picked != null && picked != _selectedTime){
      print(picked);
      String formattedTime = picked.format(context);
      print(formattedTime);
      setState(() {
        _selectedTime = picked;
        _timecontroller.text = formattedTime;
        formattime = formattedTime;
        setState(() {

        });

      });
    }
  }

  Future<void> sendData() async {
    var data = {
      'source': source.text,
      'destination': destination.text,
      'pikdate': _datecontroller.text.toString(),
      'piktime': _timecontroller.text.toString(),
      'cabType': cabType,
      'price': price.toString(),
      'sendDate': DateTime.now().toString(),
      'userid': '12',
    };
    print("inside send data 1-----------$data");
    var response = await post(Uri.parse('${Con.url}request.php'), body: data);
    print(response.body);
    print(response.statusCode);
    print("inside send data");
    var res=jsonDecode(response.body);
    if (res['result'] == 'success') {
      print('inside success function...................');
     Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRequests()));

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Requested....')));
      // Navigator.pop(context);
      setState(() {

      });
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Failed to register !!....')));
      Navigator.pop(context);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
        children: [
           Padding(
             padding: const EdgeInsets.only(left: 20,top: 40),
             child: CircleAvatar(
               radius: 37,
               backgroundColor: CupertinoColors.systemYellow,
             ),
           ),
          Padding(
            padding: const EdgeInsets.only(left: 13,top: 46),
            child: MaterialButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>menu()));
            },
            child: Icon(CupertinoIcons.line_horizontal_3,size: 60,)),
          ),
             Padding(
               padding: const EdgeInsets.only(left: 300,top: 640),
               child: CircleAvatar(
                 radius: 42,
                 backgroundColor: Colors.red,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 305,top: 660),
               child: Text('SOS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 38),),
             ),
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 780),
            child: MaterialButton(

                onPressed: () {
                  showModalBottomSheet(context: context,
                      backgroundColor: CupertinoColors.systemYellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(40))
                      ),

                      builder: (context) => Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                controller: source,

                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search
                                    ,color: Colors.black54,),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                                  hintText: "Where are you Going?",
                                  fillColor: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 20,),
                              TextField(
                                controller: destination,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black54,
                                  ),
                                  suffixIcon: Icon(
                                  Icons.location_on_outlined,color: Colors.blueAccent,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                                  hintText: "From?",
                                  fillColor: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children:[
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  width: 130,

                                  child: TextField(
                                    controller: _datecontroller,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white70,
                                      labelText: 'DATE',
                                      labelStyle: TextStyle(color: Colors.black),
                                      filled: true,
                                      prefixIcon: Icon(Icons.calendar_today,color: Colors.black,),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    readOnly: true,
                                    onTap: (){
                                      _selectDate();
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Container(
                                  width: 130,

                                  child: TextField(
                                    controller: _timecontroller,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white70,
                                      labelText: 'Time',
                                      labelStyle: TextStyle(color: Colors.black),
                                      filled: true,
                                      prefixIcon: Icon(Icons.access_time,color: Colors.black,),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    readOnly: true,
                                    onTap: (){
                                      _selectTime(context);
                                    },
                                  ),
                                ),
                              ),


                              ],),
                              SizedBox(height: 80,),
                              Padding(
                                padding: const EdgeInsets.only(left: 220),
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 15,
                                          spreadRadius: 1,
                                          offset: Offset(0, 6),
                                        )
                                      ]
                                  ),
                                  child: MaterialButton(
                                    minWidth: 130,
                                    height: 50,
                                    onPressed: () {
                                      showModalBottomSheet(context: context,
                                      isScrollControlled: true,
                                      backgroundColor: CupertinoColors.systemYellow,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(top: Radius.circular(40))
                                      ),
                                      builder: (context) => Stack(
                                        children: [ Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: AbsorbPointer(
                                              absorbing:(visibilityMap['shared']==true)?false:true,
                                              child: Stack(
                                                children: [Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 100),
                                                            child: Row(
                                                              children: [Container(
                                                                width: 60,
                                                                child: IconButton(onPressed: (){
                                                                  Navigator.pop(context);
                                                                }, icon: Icon(Icons.arrow_back),
                                                                iconSize: 40,),

                                                              ),
                                                                Padding(
                                                                  padding: EdgeInsets.only(left: 50),
                                                                  child: Text("Type of Ride",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                                                ),],),
                                                          ),
                                                    SizedBox(height: 20,),
                                                   Stack(
                                                     children:[ AbsorbPointer(
                                                       absorbing:(visibilityMap['shared']==true)?false:true,
                                                       child: Container(
                                                         height: 90,
                                                         width: 380,
                                                         decoration: BoxDecoration(
                                                           color: visibilityMap['shared']==true?Colors.black:Colors.grey,
                                                        borderRadius: BorderRadius.circular(10),
                                                         ),
                                                         child: MaterialButton(
                                                        onPressed: () {
                                                          cabType='shared';
                                                          price=130;


                                                          showDialog(context: context,
                                                              builder: (context)=> AlertDialog(
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(20)
                                                                ),
                                                                actions: [
                                                                  TextButton(onPressed: (){
                                                                    Navigator.of(context).pop();
                                                                  },
                                                                      child: Text('Cancel',style: TextStyle(color: Colors.red,fontSize: 20),)),
                                                                  TextButton(onPressed: (){
                                                                    print(source.text);
                                                                    print(destination.text);
                                                                    print(_datecontroller.text);
                                                                    print(_timecontroller.text);
                                                                    print(cabType);
                                                                    print(price);
                                                                    setState(() {
                                                                      sendData();
                                                                    });
                                                                   // Navigator.push(context, MaterialPageRoute(builder: (context) => pay()));
                                                                  },
                                                                      child: Text('Continue',style: TextStyle(color: Colors.green,fontSize: 20),))
                                                                ],
                                                                title: Text('Alert'),
                                                                contentPadding: EdgeInsets.all(20),
                                                                content: Text('SHARED per hour amount: Rs $price'),

                                                              ),
                                                          );
                                                          },
                                                         ),
                                                       ),
                                                     ),
                                                       Padding(
                                                         padding: const EdgeInsets.only(left: 20,top: 10),
                                                         child: Image(image: AssetImage('images/car1.png')),
                                                       ),
                                                       Padding(
                                                         padding: const EdgeInsets.only(left: 110,top: 15),
                                                         child: Text('SHARED',style: TextStyle(fontWeight: FontWeight.bold,
                                                             color: Colors.white,fontSize: 24),),
                                                       ),
                                                       Padding(
                                                         padding: const EdgeInsets.only(top: 60,left: 110),
                                                         child: Text('Shared ride with others going way',style: TextStyle(fontSize: 13,color: Colors.white),),
                                                       ),
                                                       Padding(
                                                         padding: const EdgeInsets.only(left: 250,top: 18),
                                                         child: Text('INR ₹ 130.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                                       )
                                                   ],),
                                                     SizedBox(height: 20,),
                                                     Stack(
                                                       children: [AbsorbPointer(
                                                         absorbing:(visibilityMap['standard']==true)?false:true,

                                                         child: Container(
                                                           height: 90,
                                                           width: 380,
                                                           decoration: BoxDecoration(
                                                             color: visibilityMap['standard']==true?Colors.black:Colors.grey,
                                                             borderRadius: BorderRadius.circular(10),
                                                           ),
                                                           child: MaterialButton(
                                                             onPressed: () {

                                                               cabType='standard';
                                                               price=150;
                                                               showDialog(context: context,
                                                                 builder: (context)=> AlertDialog(
                                                                   shape: RoundedRectangleBorder(
                                                                       borderRadius: BorderRadius.circular(20)
                                                                   ),
                                                                   actions: [
                                                                     TextButton(onPressed: (){
                                                                       Navigator.of(context).pop();
                                                                     },
                                                                         child: Text('Cancel',style: TextStyle(color: Colors.red,fontSize: 20),)),
                                                                     TextButton(onPressed: (){
                                                                       print(source.text);
                                                                       print(destination.text);
                                                                       print(_datecontroller.text);
                                                                       print(_timecontroller.text);
                                                                       print(cabType);
                                                                       print(price);
                                                                       setState(() {
                                                                         sendData();
                                                                       });
                                                                       Navigator.push(context, MaterialPageRoute(builder: (context) => pay()));
                                                                     },
                                                                         child: Text('Continue',style: TextStyle(color: Colors.green,fontSize: 20),))
                                                                   ],
                                                                   title: Text('Alert'),
                                                                   contentPadding: EdgeInsets.all(20),
                                                                   content: Text('STANDARD per hour amount: Rs $price'),

                                                                 ),
                                                               );
                                                             },
                                                           ),
                                                         ),
                                                       ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left: 20,top: 10),
                                                           child: Image(image: AssetImage('images/car2.png')),
                                                         ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left: 110,top: 15),
                                                           child: Text('STANDARD',style: TextStyle(fontWeight: FontWeight.bold,
                                                               color: Colors.white,fontSize: 24),),
                                                         ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(top: 60,left: 110),
                                                           child: Text('Affordable rides , all to yourself',style: TextStyle(fontSize: 13,color: Colors.white),),
                                                         ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left: 250,top: 18),
                                                           child: Text('INR ₹ 150.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                                         )
                                                     ],),
                                                    SizedBox(height: 20,),
                                                     Stack(
                                                       children:[ AbsorbPointer(
                                                         absorbing:(visibilityMap['deluxe']==true)?false:true,

                                                         child: Container(
                                                           height: 90,
                                                           width: 380,
                                                           decoration: BoxDecoration(
                                                             color: visibilityMap['deluxe']==true?Colors.black:Colors.grey,
                                                             borderRadius: BorderRadius.circular(10),
                                                           ),
                                                           child: MaterialButton(
                                                             onPressed: () {

                                                               cabType='deluxe';
                                                               price=300;
                                                               showDialog(context: context,
                                                                 builder: (context)=> AlertDialog(
                                                                   shape: RoundedRectangleBorder(
                                                                       borderRadius: BorderRadius.circular(20)
                                                                   ),
                                                                   actions: [
                                                                     TextButton(onPressed: (){
                                                                       Navigator.of(context).pop();
                                                                     },
                                                                         child: Text('Cancel',style: TextStyle(color: Colors.red,fontSize: 20),)),
                                                                     TextButton(onPressed: (){
                                                                       print(source.text);
                                                                       print(destination.text);
                                                                       print(_datecontroller.text);
                                                                       print(_timecontroller.text);
                                                                       print(cabType);
                                                                       print(price);
                                                                       setState(() {
                                                                         sendData();
                                                                       });
                                                                       //Navigator.push(context, MaterialPageRoute(builder: (context) => pay()));
                                                                     },
                                                                         child: Text('Continue',style: TextStyle(color: Colors.green,fontSize: 20),))
                                                                   ],
                                                                   title: Text('Alert'),
                                                                   contentPadding: EdgeInsets.all(20),
                                                                   content: Text('DELUXE per hour amount: Rs $price'),

                                                                 ),
                                                               );
                                                             },
                                                           ),
                                                         ),
                                                       ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left: 20,top: 10),
                                                           child: Image(image: AssetImage('images/car3.png')),
                                                         ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left: 110,top: 15),
                                                           child: Text('DELUXE',style: TextStyle(fontWeight: FontWeight.bold,
                                                               color: Colors.white,fontSize: 24),),
                                                         ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(top: 60,left: 110),
                                                           child: Text('Newer cars with extra legroom',style: TextStyle(fontSize: 13,color: Colors.white),),
                                                         ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left: 250,top: 18),
                                                           child: Text('INR ₹ 300.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                                         )
                                                     ],),
                                                    SizedBox(height: 20,),
                                                     Stack(
                                                       children: [AbsorbPointer(
                                                         absorbing:(visibilityMap['premium']==true)?false:true,

                                                         child: Container(
                                                           height: 90,
                                                           width: 380,
                                                           decoration: BoxDecoration(
                                                             color: visibilityMap['premium']==true?Colors.black:Colors.grey,
                                                             borderRadius: BorderRadius.circular(10),
                                                           ),
                                                           child: MaterialButton(
                                                             onPressed: () {
                                                               cabType='premium';
                                                               price=500;
                                                               showDialog(context: context,
                                                                 builder: (context)=> AlertDialog(
                                                                   shape: RoundedRectangleBorder(
                                                                       borderRadius: BorderRadius.circular(20)
                                                                   ),
                                                                   actions: [
                                                                     TextButton(onPressed: (){
                                                                       Navigator.of(context).pop();
                                                                     },
                                                                         child: Text('Cancel',style: TextStyle(color: Colors.red,fontSize: 20),)),
                                                                     TextButton(onPressed: (){
                                                                       print(source.text);
                                                                       print(destination.text);
                                                                       print(_datecontroller.text);
                                                                       print(_timecontroller.text);
                                                                       print(cabType);
                                                                       print(price);
                                                                       setState(() {
                                                                         sendData();
                                                                       });
                                                                       //Navigator.push(context, MaterialPageRoute(builder: (context) => pay()));
                                                                     },
                                                                         child: Text('Continue',style: TextStyle(color: Colors.green,fontSize: 20),))
                                                                   ],
                                                                   title: Text('Alert'),
                                                                   contentPadding: EdgeInsets.all(20),
                                                                   content: Text('PLATINUM per hour amount: Rs $price'),

                                                                 ),
                                                               );
                                                             },
                                                           ),
                                                         ),
                                                       ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left: 20,top: 10),
                                                           child: Image(image: AssetImage('images/car4.png')),
                                                         ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left: 110,top: 15),
                                                           child: Text('PREMIUM',style: TextStyle(fontWeight: FontWeight.bold,
                                                               color: Colors.white,fontSize: 24),),
                                                         ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(top: 60,left: 110),
                                                           child: Text('Luxury rides with professional drivers',style: TextStyle(fontSize: 13,color: Colors.white),),
                                                         ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left: 250,top: 18),
                                                           child: Text('INR ₹ 500.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                                         )
                                                     ],)
                                                    ],),
                                              ],),
                                            ),
                                            ),),
                                      ],),
                                      );
                                    },
                                    child: Text('Next', style: TextStyle(fontSize: 30),),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    color: Colors.black,
                                    textColor: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                },
                child: Image(image: AssetImage('images/arrowup.png'))),
          ))
          ],),
        ],),
      ),
    );
  }
  Future<void> _selectDate() async{
    DateTime? _picked = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030)
    );
    if (_picked != null){
      setState(() {
        _datecontroller.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
