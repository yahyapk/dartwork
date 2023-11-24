import 'package:flutter/material.dart';
void main(){

}
class earn extends StatefulWidget {
  const earn({super.key});

  @override
  State<earn> createState() => _earnState();
}

class _earnState extends State<earn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 50,left: 10),
                 child: Container(
                   width: 190,
                   height: 170,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(40),
                     boxShadow: [
                     BoxShadow(
                     color: Colors.black,
                     blurRadius: 6,
                     spreadRadius: 1,
                     offset: Offset(6, 6),
                   ),

                   ],),
                   child: Column(
                     children:[
                   Padding(
                     padding: const EdgeInsets.only(left: 15,top: 15),
                     child: Text("Your Over All Estimate revenue:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                   ),
                       Padding(
                         padding: const EdgeInsets.only(top: 25),
                         child: Text("₹ 13000.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 30),),
                       )
                     ],),

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 50,left: 10),
                 child: Container(
                   width: 190,
                   height: 170,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(40),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black,
                         blurRadius: 6,
                         spreadRadius: 1,
                         offset: Offset(6, 6),
                       ),

                     ],),
                   child: Column(
                     children:[
                       Padding(
                         padding: const EdgeInsets.only(left: 15,top: 15),
                         child: Text("Your This Month's Estimate revenue:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 25),
                         child: Text("₹ 1000.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 30),),
                       )
                     ],),

                 ),
               ),
             ],
           ),
            Padding(
              padding: const EdgeInsets.only(top: 50,),
              child: Container(
                width: 380,
                height: 370,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      spreadRadius: 1,
                      offset: Offset(6, 6),
                    ),

                  ],),
                child: Column(
                  children:[

                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("You earned per ride:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 250),
                          child: Text("Rides",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Text("DATE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25,left: 15),
                          child: Text("₹ 200.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 30),),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(left: 125,top: 20),
                      child: Text("18-02-2023",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("₹ 300.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 30),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 125,top: 5),
                          child: Text("05-02-2023",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("₹ 400.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 30),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 125,top: 5),
                          child: Text("30-02-2023",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                      ],
                    ),
                  ],),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
