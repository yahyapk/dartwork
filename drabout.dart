import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/drivermenu.dart';
import 'package:cab_pro/drprofile.dart';
import 'package:cab_pro/paymenthistory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

}
class drabout extends StatefulWidget {
  const drabout({super.key});

  @override
  State<drabout> createState() => _draboutState();
}

class _draboutState extends State<drabout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us"),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>drmenu(currentIndex: 3,)));
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: CupertinoColors.white,
      body: SwitchItem(),
    );
  }
}
class SwitchItem extends StatefulWidget {
  const SwitchItem({super.key});

  @override
  State<SwitchItem> createState() => _SwitchItemState();
}

class _SwitchItemState extends State<SwitchItem> {
  bool isSelected = false;

  void itemSwitch(bool value) {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Image(image: AssetImage('images/carlogo.png')),
              ),
              SizedBox(width: 5,),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text("cab pro", style: TextStyle(fontSize: 25),),
              ),
            ],
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Version 8.00.00'),
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 2,
        ),
        ListTile(
          title: Text("Contact Us", style: TextStyle(fontSize: 25),),
          trailing: Text("+91 6562656565", style: TextStyle(fontSize: 15),),
        ),
        SizedBox(height: 550,),
        Center(child: Text("Terms of Service | Privacy Policy",
          style: TextStyle(color: Colors.blue),)),
        SizedBox(height: 5,),
        Center(child: Text("Copyright © 2023 CabPro",
          style: TextStyle(color: CupertinoColors.systemGrey),))
      ],
    );
  }
}