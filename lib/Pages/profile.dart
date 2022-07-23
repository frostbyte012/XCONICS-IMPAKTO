import 'package:flutter/material.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';
import 'Profile_Edit_Page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Profile"),
        backgroundColor: AccentColor,
      ),
      body: ListView(

        children: [

          Container(

            child: Container(
              color: AccentColor,
              height: 250,
              width: double.infinity,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('images/profile/1658261393582.jpg'),
                  ),

                  SizedBox(height: 20,),

                  Text("Deepraj Majumdar",style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
            ),

          ),


          SizedBox(height: 20,),

          ListTile(
            leading:Icon(Icons.person),
            title:Row(children: [Text("Name : "),Text(" Deepraj Majumdar"),],),
          ),

          ListTile(
            leading:Icon(Icons.important_devices),
            title:Row(children: [Text("User ID : "),Text(" froatbyte012"),],),
          ),

          ListTile(
            leading:Icon(Icons.monitor_weight),
            title:Row(children: [Text("Weight : "),Text(" 50 KG"),],),
          ),

          ListTile(
            leading:Icon(Icons.height),
            title:Row(children: [Text("Height : "),Text(" 5.7 FT"),],),
          ),

          ListTile(
            leading:Icon(Icons.man),
            title:Row(children: [Text("Gender : "),Text(" Male"),],),
          ),


        ],

      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileEditPage(uid: "frostbyte012")));
        },
        backgroundColor: AccentColor,
      ),

    );
  }
}
