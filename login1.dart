import 'dart:convert';

import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/dashboard.dart';
import 'package:cab_pro/signup.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'connect.dart';

void main(){
  
}
class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  bool passwordObscured = true;
  var uname = TextEditingController();
  var pass = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  Future<void> Register() async {
    var data = {
      'username':uname.text,
      'password': pass.text,

    };

  print("inside send data 1---------$data");
  var response = await post(Uri.parse('${Con.url}user.php'), body: data);
  print(response.body);
  print(response.statusCode);
  print("inside send data");
  var res=jsonDecode(response.body);
  if (res['result'] == 'success') {
  Navigator.push(context, MaterialPageRoute(builder: (context)=>dash()));
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text('Registered....')));
  Navigator.pop(context);
  } else {
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text('Failed to register !!....')));
  Navigator.pop(context);
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Text('Hello User!',style: TextStyle(fontSize: 60),),
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 370,
                child: TextFormField(
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Name Required';
                    }
                  },
                  controller: uname,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.account_circle_outlined
                    ,color: Colors.black,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                    hintText: "Username",
                    fillColor: Colors.black12,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 370,
                child: TextFormField(
                  controller: pass,
                  validator: (value) {
                    if (value!.length < 6){
                      return 'Password should be t least 6 characters';
                    }
                  },
                  obscureText: passwordObscured,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline,color: Colors.black,),
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            passwordObscured = !passwordObscured;
                          });
                        },
                        icon: Icon(
                          passwordObscured ?
                          Icons.visibility_off : Icons.visibility,color: Colors.black,),),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                      hintText: "Password",
                      fillColor: Colors.black12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 140),
                child: TextButton(onPressed: (){},
                    child:  Text("Forgot Your Password?",style: TextStyle(fontSize: 20,color: Colors.black54),),),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.black,
                      blurRadius: 12,
                      spreadRadius: -2,
                      offset: Offset(0,6),
                    )
                  ]
                ),
                child: MaterialButton(
                  minWidth: 150,
                  height: 50,
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {

                      }
                   },
                child: Text("Log In",style: TextStyle(fontSize: 30),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                  color: Colors.yellow,
                  textColor: Colors.black,
                ),
              ),
              SizedBox(height: 220,),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10,bottom: 20),
                      child: Text("Don't have an Account?",style: TextStyle(color: Colors.black54,fontSize: 17),),
                    ),
                    MaterialButton(
                      minWidth: 40,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>sign()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20,right: 20),
                          child: Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: 'Oswald'),),
                        ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
