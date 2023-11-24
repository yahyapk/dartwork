import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/drotpsub.dart';
import 'package:cab_pro/drsignup.dart';
import 'package:cab_pro/otpsubmit.dart';
import 'package:cab_pro/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){

}

class drotpass extends StatefulWidget {
  const drotpass({super.key});

  @override
  State<drotpass> createState() => _drotpassState();
}

class _drotpassState extends State<drotpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35,right: 345),
              child: MaterialButton(

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>drsign()));
                  },
                  child: Icon(Icons.arrow_back_ios_new,size: 40,)),
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 53,top: 40),
                    child: Text("Verify",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,top: 40),
                    child: Text("OTP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,color: CupertinoColors.systemYellow),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,top: 40),
                    child: Text("!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Image(image: AssetImage('images/otp.png'),),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 68,
                    height: 58,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 1.0
                        )],
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        fillColor: Colors.black12,
                        filled: true,
                        hintText: "0",
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  Container(
                    width: 68,
                    height: 58,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 1.0
                        )],
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: "0",
                          fillColor: Colors.black12,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  Container(
                    width: 68,
                    height: 58,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 1.0
                        )],
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: "0",
                          fillColor: Colors.black12,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  Container(
                    width: 68,
                    height: 58,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 1.0
                        )],
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: "0",
                          fillColor: Colors.black12,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90,top: 100),
                  child: Text("Don't Receive Code?",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black45),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100,left: 5),
                  child: Text("Re-Send",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            SizedBox(height: 75,),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>drotpsub()));
                },
                child: Text('Submit',style: TextStyle(fontSize: 30),),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.black,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}