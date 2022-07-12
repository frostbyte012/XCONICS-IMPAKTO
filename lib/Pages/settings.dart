import "package:flutter/material.dart";
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: AccentColor,
        title: Text("Settings"),
      ),

      body:ListView(
        children: [


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("Accessibility"),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.manage_accounts),
              title: Text("Profile Management"),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.data_object),
              title: Text("Data"),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.devices),
              title: Text("Devices"),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text("Security & Privacy"),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.device_hub),
              title: Text("Softwares"),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.phone_android),
              title: Text("Hardware "),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.troubleshoot),
              title: Text("Trouble shooting"),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.group),
              title: Text("Social"),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Locations"),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.history),
              title: Text("History"),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.security_update),
              title: Text("Security Update"),
            ),
          ),


          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.phone_android_sharp),
              title: Text("Build Version"),
            ),
          ),

        ],
      ),
    );
  }
}
