import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/drprofile.dart';
import 'package:cab_pro/paymenthistory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

}
class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>menu()));
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
    return Column(
      children: [
        ListTile(
          title: Text("Notifications",style: TextStyle(fontSize: 25),),
          trailing: Switch(value: isSelected, onChanged: itemSwitch),
        ),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 2,
        ),
        InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>payment()));
        },
          child: ListTile(
            title: Text("Payment Settings",style: TextStyle(fontSize: 25),),
            trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios,size: 30,)),
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 2,
        ),
        ListTile(
          title: Center(child: Text("Social",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: MaterialButton(
                minWidth: 190,
                height: 50,
                onPressed: () {

                },
                child: Wrap(
                  children: [
                    Icon(Icons.facebook,size: 35,),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text('facebook', style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
              ),
            ),
            SizedBox(width: 15,),
            MaterialButton(
              minWidth: 190,
              height: 50,
              onPressed: () {

              },
              child: Wrap(
                children: [
                  Icon(Icons.g_mobiledata,size: 50,),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Google', style: TextStyle(fontSize: 25),),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              color: Colors.blue,
              textColor: Colors.white,
            )
          ],
        ),
      ],
    );

  }
}