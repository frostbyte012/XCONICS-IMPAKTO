import 'package:flutter/material.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';
import 'Profile_Edit_Page.dart';
import 'Login_Screen.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(child: Text("Xconics Impakto")),
        backgroundColor: AccentColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: RawMaterialButton(
              fillColor: AccentColor,
              constraints: BoxConstraints.tight(Size(250,250)),
              shape: CircleBorder(),
              child: Text("Login Page"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },),
          ),

          SizedBox(height: 40,),

          RawMaterialButton(
            fillColor: AccentColor,
            constraints: BoxConstraints.tight(Size(250,250)),
            shape: CircleBorder(),
            child: Text("Profile Edit"),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileEditPage(uid: "rtretgre")));
            },),

        ],
      ),
    );
  }
}
