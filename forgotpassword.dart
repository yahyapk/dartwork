import 'package:cab_pro/login1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 void main(){

 }
 class forgotpass extends StatefulWidget {
   const forgotpass({super.key});

   @override
   State<forgotpass> createState() => _forgotpassState();
 }

 class _forgotpassState extends State<forgotpass> {
   bool passwordObscured = true;
   bool password = true;
   var pass = TextEditingController();
   var cpass = TextEditingController();
   var email = TextEditingController();
   var _formKey = GlobalKey<FormState>();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Forgot Password"),
         centerTitle: true,
         actions: [
           IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
         ],
         backgroundColor: Colors.black,
         leading: IconButton(
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>log()));
           },
           icon: Icon(Icons.arrow_back_ios),
         ),
       ),
  body: Form(
    key: _formKey,
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 110,),
          Center(child: Text("OTP Verification",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
          SizedBox(height: 20,),
          Center(
            child: Text("Enter Your Email for the verification process,\n"
                "we will send 4 digits code to your email",style: TextStyle(color: Colors.grey,fontSize: 18),),
          ),
          SizedBox(height: 40,),
          Center(
            child: Container(
              width: 370,
              child: TextFormField(
                validator: (value){
                  if (value == null || value.isEmpty){
                    return 'email Required';
                  }
                },
                controller: email,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined
                    ,color: Colors.black,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                  hintText: "E-mail",
                  fillColor: Colors.black12,
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          ListTile(
            trailing: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),minimumSize: Size(150, 50),backgroundColor: Colors.yellow,),
                  onPressed: (){
                    showModalBottomSheet(context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(40))
                        ),
                        builder: (context) => SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Enter 4 Digits Code",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Center(
                                  child: Text("Enter the 4 digits code that you received\n"
                                  "your email",style: TextStyle(fontSize: 18,color: Colors.grey),),
                                ),
                                SizedBox(height: 20,),
                                Row(
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
                                SizedBox(height: 20,),
                                Center(child: Text("Resend OTP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                SizedBox(height: 30,),
                                ListTile(
                                  trailing: ElevatedButton(
                                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40)
                                      ),minimumSize: Size(150, 50),backgroundColor: Colors.yellow,),
                                      onPressed: (){
                                        showModalBottomSheet(context: context,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.vertical(top: Radius.circular(40))
                                            ),
                                            builder: (context) =>Container(
                                              padding: const EdgeInsets.all(20),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Reset Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                                  SizedBox(height: 25,),
                                                  Center(
                                                    child: Text("Set the new password to your account to\n"
                                                        "you can login and access all the features.",style: TextStyle(fontSize: 18,color: Colors.grey),),
                                                  ),
                                                  SizedBox(height: 30,),
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
                                                              Icons.visibility_off_outlined : Icons.visibility,color: Colors.black,),),
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide.none,
                                                            borderRadius: BorderRadius.circular(20),),
                                                          filled: true,
                                                          hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                                                          hintText: "New Password",
                                                          fillColor: Colors.black12
                                                      ),),
                                                  ),
                                                  SizedBox(height: 40,),
                                                  Container(
                                                    width: 370,
                                                    child: TextFormField(
                                                      controller: cpass,
                                                      validator: (value){
                                                        if (value == null || value.isEmpty){
                                                          return 'Confirm Password Required';
                                                        }
                                                      },
                                                      obscureText: password,
                                                      decoration: InputDecoration(
                                                          prefixIcon: Icon(Icons.lock_outline,color: Colors.black,),
                                                          suffixIcon: IconButton(
                                                            onPressed: (){
                                                              setState(() {
                                                                password = !password;
                                                              });
                                                            },
                                                            icon: Icon(
                                                              password ?
                                                              Icons.visibility_off_outlined : Icons.visibility,color: Colors.black,),),
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide.none,
                                                            borderRadius: BorderRadius.circular(20),),
                                                          filled: true,
                                                          hintStyle: TextStyle(color: Colors.black26,fontSize: 20),
                                                          hintText: "Confirm Password",
                                                          fillColor: Colors.black12
                                                      ),),
                                                  ),
                                                  SizedBox(height: 90,),
                                                  Center(
                                                    child: Container(
                                                      width: 350,
                                                      child: ElevatedButton(
                                                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(15)
                                                          ),minimumSize: Size(150, 50),backgroundColor: Colors.yellow,),
                                                          onPressed: (){},
                                                          child: Text("Submit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ));
                                      },
                                      child:  Wrap(
                                        children: [
                                          Icon(Icons.arrow_forward,size: 30,color: Colors.black,),
                                          SizedBox(width: 10,),
                                          Text("Submit",style: TextStyle(fontSize: 25,color: Colors.black),),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ),
                        ));
                  },
                  child: Wrap(
                    children: [
                      Icon(Icons.arrow_forward,size: 30,color: Colors.black,),
                      SizedBox(width: 10,),
                      Text("Next",style: TextStyle(fontSize: 25,color: Colors.black),),
                    ],
                  )),
            ),
          ),
        ],
      ),
    ),
  ),
     );
   }
 }
