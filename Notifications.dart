import 'package:cab_pro/drivermenu.dart';
import 'package:cab_pro/drprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  
}
class notif extends StatefulWidget {
  const notif({super.key});

  @override
  State<notif> createState() => _notifState();
}

class _notifState extends State<notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
        ],
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
  void itemSwitch(bool value){
    setState(() {
      isSelected = !isSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Notifications",style: TextStyle(fontSize: 25),),
      trailing: Switch(value: isSelected, onChanged: itemSwitch),
    );
  }
}

