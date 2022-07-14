import 'package:flutter/material.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';
import 'dart:math';

class CalibrationPage extends StatefulWidget {
  const CalibrationPage({Key? key}) : super(key: key);

  @override
  State<CalibrationPage> createState() => _CalibrationPageState();
}

class _CalibrationPageState extends State<CalibrationPage> with SingleTickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(duration: Duration(seconds: 2), vsync: this)..repeat();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AccentColor,
        title: Text("Walk Calibration"),
      ),
      body: ListView(
        children: [

          //TODO ANIMATION
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (_, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * 3.14,
                  child: child,
                );
              },
              child: Image.asset("images/calibration/shoe.png"),
            ),
          ),


          Column(
            children: [
              Text("1430",style:TextStyle(fontWeight:FontWeight.normal,fontSize:60.0,color: Colors.black),),
              SizedBox(height: 10,),
              Text("Steps",style:TextStyle(fontWeight:FontWeight.bold,fontSize:20.0,color: Colors.black),),
            ],
          ),



          SizedBox(height: 20,),

          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.0)),
            minWidth: 230.0,
            height: 47,
            color: AccentColor,
            child: new Text('Save',
                style: new TextStyle(fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            onPressed: () {},
          ),

        ],
      ),

    );
  }
}
