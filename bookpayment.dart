import 'package:cab_pro/booklast.dart';
import 'package:cab_pro/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){

}
class pay extends StatefulWidget {
  const pay({super.key});

  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {
  int  _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemYellow,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 170,top: 50),
            child: Text('Payment',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('images/cash.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 310),
                  child: Radio(value: 3,
                    groupValue: _value,
                    onChanged: (value){
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text('Cash On Pay',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ),
              ],),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: CupertinoColors.white,
                    backgroundImage: AssetImage('images/visa1.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 310),
                  child: Radio(
                    value: 1,
                      groupValue: _value,
                      onChanged: (value){
                    setState(() {
                      _value = value!;
                    });
                      },
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text('****2376',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ),
              ],),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/google.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 310),
                  child: Radio(value: 2,
                      groupValue: _value,
                      onChanged: (value){
                        setState(() {
                          _value = value!;
                        });
                      },
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text('Google Pay',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ),
              ],),
          ),
          SizedBox(height: 420,),
          Center(
            child: Container(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => boklast()));
                },
                child: Text('Submit', style: TextStyle(fontSize: 30),),
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
    );
  }
}
