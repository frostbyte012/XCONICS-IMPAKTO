import 'package:flutter/material.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';

class SOSPage extends StatefulWidget {
  const SOSPage({Key? key}) : super(key: key);

  @override
  State<SOSPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<SOSPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("SOS"),
        backgroundColor: AccentColor,
      ),
      body: ListView(

        children: [

          SizedBox(height: 10,),

          ListTile(
            leading:Icon(Icons.call),
            title:Row(children: [Text("SOS Contact 1 : "),Text(" xxxxxxxxxx"),],),
          ),

          ListTile(
            leading:Icon(Icons.call),
            title:Row(children: [Text("SOS Contact 2 : "),Text(" xxxxxxxxxx"),],),
          ),

          ListTile(
            leading:Icon(Icons.call),
            title:Row(children: [Text("SOS Contact 3 : "),Text(" xxxxxxxxxx"),],),
          ),

          ListTile(
            leading:Icon(Icons.call),
            title:Row(children: [Text("SOS Contact 4 : "),Text(" xxxxxxxxxx"),],),
          ),

          ListTile(
            leading:Icon(Icons.call),
            title:Row(children: [Text("SOS Contact 5 : "),Text(" xxxxxxxxxx"),],),
          ),


        ],

      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: (){},
        backgroundColor: AccentColor,
      ),

    );
  }
}
