import 'package:cab_pro/login.dart';
import 'package:flutter/material.dart';
void main(){
  
}
class logo extends StatefulWidget {
  const logo({super.key});

  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      if(context!=null && context.mounted){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Log1()));
      }
    });
    return Scaffold(
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Image(image: AssetImage('images/logo.png')),
          )),
      ],),
    );
  }
}
