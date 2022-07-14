import 'package:flutter/material.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';


class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AccentColor,
        title: Text("FAQ",),
      ),
      body: ListView(
        children: [

          Container(
            child: Center(
              child: Icon(Icons.play_arrow,color: Colors.white60,size: 100,),
            ),
            color: Colors.grey,
            height: 250,
            width: double.infinity,
          ),

          SizedBox(height: 25,),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 1"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 2"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 3"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 4"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 5"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 6"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 7"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 8"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 9"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 10"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 11"),
            ),
            onTap: (){},
          ),

          InkWell(
            child:ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Question 12"),
            ),
            onTap: (){},
          ),

        ],
      ),

    );
  }
}
