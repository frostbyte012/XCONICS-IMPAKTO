import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Pages/profile.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Pages/sos_page.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Pages/walk_calibration_page.dart';
import 'settings.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'faq_screen.dart';
import 'health_file.dart';
import 'package:flutter_blue/flutter_blue.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  FlutterBlue flutterBlue = FlutterBlue.instance;

  Future<void> flutter_Blue() async {
    await flutterBlue.startScan(timeout: Duration(seconds: 4));

// Listen to scan results
    var subscription = flutterBlue.scanResults.listen((results) {
      // do something with scan results
      for (ScanResult r in results) {
        print('${r.device.name} found! rssi: ${r.rssi}');
      }
    });

// Stop scanning
    flutterBlue.stopScan();
  }

  Future<void> blue_connect()async
  {
    // Connect to the device
    var device;
    await device.connect();

// Disconnect from device
    device.disconnect();
  }

   var AutoTextColor = InactiveTextSliderColor;
   var AutoColor= InactiveCardColor;
   var ManualColor = InactiveCardColor;
   var ManualTextColor= InactiveTextSliderColor;
   var left_shoe_connected=0;
   var right_shoe_connected=0;
   var right_shoe_battery=25;
   var left_shoe_battery=25;
   var mode=1; //1 for manual 0 for auto
   Color home_icon_color=InactiveBottomNavigationActiveColor;
   Color health_icon_color=InactiveBottomNavigationActiveColor;
   Color timer_icon_color=InactiveBottomNavigationActiveColor;
   Color location_icon_color=InactiveBottomNavigationActiveColor;
   Color challenge_icon_color=InactiveBottomNavigationActiveColor;
   Color scanner_icon_color=InactiveBottomNavigationActiveColor;
   var auto_text="Slide for auto mode";
   var manual_text="Slide for manual mode";
   var current_text="Slide for auto mode";
   Icon auto_icon=Icon(Icons.flash_on);
   Icon manual_icon=Icon(Icons.settings);
   Icon current_icon=Icon(Icons.flash_on);


   void autoTap()
   {
     setState((){
       AutoColor=ActiveCardColor;
       AutoTextColor=ActiveTextSliderColor;
       ManualTextColor=InactiveTextSliderColor;
       ManualColor=InactiveCardColor;
       current_text=manual_text;
       current_icon=manual_icon;
       mode=0;
      }
     );
   }

   void manualTap()
   {
     setState((){
       AutoColor=InactiveCardColor;
       AutoTextColor=InactiveTextSliderColor;
       ManualTextColor=ActiveTextSliderColor;
       ManualColor=ActiveCardColor;
       current_text=auto_text;
       current_icon=auto_icon;
       mode=1;

     });
   }

   void tapHome(){
     setState((){
       home_icon_color=ActiveBottomNavigationActiveColor;
       health_icon_color=InactiveBottomNavigationActiveColor;
       timer_icon_color=InactiveBottomNavigationActiveColor;
       location_icon_color=InactiveBottomNavigationActiveColor;
       challenge_icon_color=InactiveBottomNavigationActiveColor;
       scanner_icon_color=InactiveBottomNavigationActiveColor;

     });
   }


   void tapHealth(){
     setState((){
       home_icon_color=InactiveBottomNavigationActiveColor;
       health_icon_color=ActiveBottomNavigationActiveColor;
       timer_icon_color=InactiveBottomNavigationActiveColor;
       location_icon_color=InactiveBottomNavigationActiveColor;
       challenge_icon_color=InactiveBottomNavigationActiveColor;
       scanner_icon_color=InactiveBottomNavigationActiveColor;

     });
   }


   void tapTimer(){
     setState((){
       home_icon_color=InactiveBottomNavigationActiveColor;
       health_icon_color=InactiveBottomNavigationActiveColor;
       timer_icon_color=ActiveBottomNavigationActiveColor;
       location_icon_color=InactiveBottomNavigationActiveColor;
       challenge_icon_color=InactiveBottomNavigationActiveColor;
       scanner_icon_color=InactiveBottomNavigationActiveColor;

     });
   }


   void tapLocation(){
     setState((){
       home_icon_color=InactiveBottomNavigationActiveColor;
       health_icon_color=InactiveBottomNavigationActiveColor;
       timer_icon_color=InactiveBottomNavigationActiveColor;
       location_icon_color=ActiveBottomNavigationActiveColor;
       challenge_icon_color=InactiveBottomNavigationActiveColor;
       scanner_icon_color=InactiveBottomNavigationActiveColor;

     });
   }


   void tapChallenge(){
     setState((){
       home_icon_color=InactiveBottomNavigationActiveColor;
       health_icon_color=InactiveBottomNavigationActiveColor;
       timer_icon_color=InactiveBottomNavigationActiveColor;
       location_icon_color=InactiveBottomNavigationActiveColor;
       challenge_icon_color=ActiveBottomNavigationActiveColor;
       scanner_icon_color=InactiveBottomNavigationActiveColor;

     });
   }


   void tapScanner(){
     setState((){
       home_icon_color=InactiveBottomNavigationActiveColor;
       health_icon_color=InactiveBottomNavigationActiveColor;
       timer_icon_color=InactiveBottomNavigationActiveColor;
       location_icon_color=InactiveBottomNavigationActiveColor;
       challenge_icon_color=InactiveBottomNavigationActiveColor;
       scanner_icon_color=ActiveBottomNavigationActiveColor;

     });
   }

  @override
  Widget build(BuildContext context) {

    flutter_Blue();
    blue_connect();

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: AccentColor,size: 40),
        backgroundColor: Colors.white,
        actions: [
              LoadingAnimationWidget.inkDrop(color: AccentColor, size: 30),
              SizedBox(width: 0,),
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: AccentColor,)),
              Image.asset("images/appbar/left_shoe_${left_shoe_connected}_connected.jpeg",width:40,height: 40,),
              SizedBox(width: 10,),
              Image.asset("images/appbar/right_shoe_${right_shoe_connected}_connected.jpeg",width: 40,height: 40,),
              SizedBox(width: 20,),
              Image.asset("images/appbar/battery_${left_shoe_battery}.jpeg",width: 30,height: 30,),
              SizedBox(width: 10,),
              Image.asset("images/appbar/battery_${right_shoe_battery}.jpeg",width: 30,height: 30,),
              SizedBox(width: 20,)

        ],
      ),

      drawer:Drawer(
        child: ListView(
          children: [

            UserAccountsDrawerHeader(
                 decoration: BoxDecoration(
                   color: AccentColor,
                 ),
                currentAccountPicture: GestureDetector(
                  onTap: (){},
                  child: CircleAvatar(
                    backgroundImage:AssetImage('images/profile/1658261393582.jpg'),
                    backgroundColor: Colors.grey,

                  ),
                ),
                accountName: Text("Deepraj Majumdar"),
                accountEmail: Text("deeprajmajumdar@gmail.com"),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
              },
              child: ListTile(
                leading:Icon(Icons.person,color: Colors.grey,),
                title: Text("Profile"),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading:Icon(Icons.snowshoeing,color: Colors.grey,),
                title: Text("Gesture"),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SOSPage()));
              },
              child: ListTile(
                leading:Icon(Icons.message,color: Colors.grey,),
                title: Text("SOS"),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CalibrationPage()));
              },
              child: ListTile(
                leading:Icon(Icons.directions_walk,color: Colors.grey,),
                title: Text("Walk Calibration"),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FAQScreen()));
              },
              child: ListTile(
                leading:Icon(Icons.question_answer,color: Colors.grey,),
                title: Text("FAQ"),
              ),
            ),

            Divider(color: AccentColor,),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
              },
              child: ListTile(
                leading:Icon(Icons.settings,color:AccentColor,),
                title: Text("Settings"),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading:Icon(Icons.contact_mail,color: AccentColor,),
                title: Text("About Us"),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading:Icon(Icons.call,color: AccentColor,),
                title: Text("Support"),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading:Icon(Icons.logout,color: AccentColor,),
                title: Text("Log Out"),
              ),
            ),


          ],
        ),
      ),

      body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetCircularAnimator(
                  size: 300,
                  innerAnimation: Curves.elasticInOut,
                  child:Container(
                    height: 70,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(child:Text("0",style:TextStyle(fontWeight:FontWeight.normal,fontSize:100.0,color: Colors.black),),),
                        SizedBox(height:5,),
                        Center(child:Text("Steps",style:TextStyle(fontWeight:FontWeight.bold,fontSize:20.0,color: Colors.black),),),
                      ],
                    ),
                  ),
              ),
              SizedBox(height: 30,),
              Center(
                child:Builder(
                  builder: (context) {
                    final GlobalKey<SlideActionState> _key = GlobalKey();
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(50,0,50,0),
                      child: SlideAction(
                        innerColor: Colors.white,
                        outerColor: AccentColor,
                        sliderButtonIcon: current_icon,
                        child: Text(current_text,style: TextStyle(color: Colors.white),),
                        key: _key,
                        onSubmit: () {

                          Future.delayed(
                            Duration(seconds: 1),
                                () => _key.currentState?.reset().whenComplete((){
                                  mode==0?manualTap():autoTap();
                                }),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 70,),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("0.0",style: TextStyle(fontSize: 30),),
                        Text("Distance(mi)",style: TextStyle(color: AccentColor,fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Text("0.0",style: TextStyle(fontSize: 30),),
                        Text("BMI",style: TextStyle(color: AccentColor,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        Text("0.0",style: TextStyle(fontSize: 30),),
                        Text("Calories",style: TextStyle(color: AccentColor,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),

            ],
      ),

      bottomNavigationBar: BottomAppBar(



        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){ tapHome(); }, icon:Icon(Icons.home,size:25,color:home_icon_color,),),
                  Text("Home",style: TextStyle(color: home_icon_color,fontSize: 10),),
                ],
              ),
            ),

            Container(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    tapHealth();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthScreen()));
                    },
                      icon:Icon(Icons.health_and_safety_outlined,size:25,color: health_icon_color)),
                  Text("Health",style: TextStyle(color: health_icon_color,fontSize: 10),),
                ],
              ),
            ),


            Container(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){ tapTimer();}, icon:Icon(Icons.timer_sharp,size:25,color: timer_icon_color)),
                  Text("Workout",style: TextStyle(color: timer_icon_color,fontSize: 10),),
                ],
              ),
            ),


            Container(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){ tapLocation();}, icon:Icon(Icons.location_on,size:25,color: location_icon_color)),
                  Text("Navigation",style: TextStyle(color: location_icon_color,fontSize: 10),),
                ],
              ),
            ),


            Container(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){ tapChallenge();}, icon:Icon(Icons.run_circle,size:25,color: challenge_icon_color),),
                  Text("Challenge",style: TextStyle(color: challenge_icon_color,fontSize: 10),),
                ],
              ),
            ),


            Container(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){ tapScanner(); }, icon: Icon(Icons.person_search,size:25,color: scanner_icon_color)),
                  Text("Scanner",style: TextStyle(color: scanner_icon_color,fontSize: 10),),
                ],
              ),
            ),
          ],
        ),



      ),

    );

  }
}





//-------------------------------------------------------------DEFAULT AUTO MANUAL BUTTON-------------------------------------------///
// Container(
// height: 80,
// width: 180,
// decoration: BoxDecoration(
// color: Color(0xFFd1cfcf),
// borderRadius: BorderRadius.circular(20),),
// child: Padding(
// padding: EdgeInsets.all(10),
// child: Row(
// children: [
// InkWell(
// onTap: (){
// //Todo Auto
// },
// child: Container(
// height: 65,
// width: 60,
// child: Center(child: Text("Auto",style: TextStyle(color: AutoTextColor),)),
// decoration: BoxDecoration(
// color: AutoColor,
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(13),
// bottomLeft: Radius.circular(13),
// )
// ),
// ),
// ),
// SizedBox(width: 8,),
// InkWell(
// onTap: (){
// //Todo Manual
// },
// child: Container(
// height: 65,
// width: 90,
// child: Center(child:Text("Manual",style:TextStyle(color:ManualTextColor),)),
// decoration:BoxDecoration(
// color: ManualColor,
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(13),
// bottomRight: Radius.circular(13),
// ),
// ),
// ),
// )
// ],
// ),
// ),
// ),