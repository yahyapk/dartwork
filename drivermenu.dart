import 'package:cab_pro/draccepted.dart';
import 'package:cab_pro/drprofile.dart';
import 'package:cab_pro/earnings.dart';
import 'package:cab_pro/newrides.dart';
import 'package:cab_pro/ridehistory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){

}

class drmenu extends StatefulWidget {
  var currentIndex;
   drmenu({super.key,required this.currentIndex});

  @override
  State<drmenu> createState() => _drmenuState();
}

class _drmenuState extends State<drmenu> {
  int myIndex = 0;
  final screens = [
 newride(),
 draccept(),
 ridehist(),
 earn(),
 drprof(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myIndex = widget.currentIndex;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.tertiarySystemBackground,
      body: IndexedStack(
        index: myIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        selectedFontSize: 20,
        unselectedFontSize: 17,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        backgroundColor: CupertinoColors.systemYellow,
        type: BottomNavigationBarType.fixed,
        currentIndex: myIndex,



        onTap: (index){
          setState(() {

            myIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.new_label_outlined,color: Colors.black,size: 35,),
              label: "NEW RIDES"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history_outlined,color: Colors.black,size: 35,),
            label: "ACCEPTED",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history_outlined,color: Colors.black,size: 35,),
            label: "RIDE HISTORY",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on_outlined,color: Colors.black,size: 35
            ,),
              label: "EARNINGS"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,color: Colors.black,size: 35
            ,),
              label: "PROFILE"
          ),
        ],),
    );
  }
}
