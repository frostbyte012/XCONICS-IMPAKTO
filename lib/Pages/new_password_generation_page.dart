import 'package:flutter/material.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';

class NewPasswordGenerationpage extends StatefulWidget {
  const NewPasswordGenerationpage({Key? key}) : super(key: key);

  @override
  State<NewPasswordGenerationpage> createState() => _NewPasswordGenerationpageState();
}

class _NewPasswordGenerationpageState extends State<NewPasswordGenerationpage> {


  TextEditingController _inputEmailOTP = new TextEditingController();
  TextEditingController _inputMobileNumberOTP = new TextEditingController();

  bool handlePassword=true;
  bool handleReEnteredPassword=true;

  void check_handle_password(){
    handlePassword=handlePassword==true?false:true;
  }

  void check_handle_re_entered_password(){
    handleReEnteredPassword=handleReEnteredPassword==true?false:true;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(

        children: [


          Image.asset("images/logo_display.png", fit: BoxFit.fill,),

          SizedBox(height: 30,),

          Center(
            child: SizedBox(
              height: 45,
              width: 320,
              child: TextFormField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  counterText: "",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Enter New Password.",
                  labelStyle: TextStyle(color: TextFillColor),
                  // border:OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AccentColor, width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AccentColor, width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  //border:OutLineInputBorder or UnderLineInputBorder or InputBorder.none
                  // hintText: can be used
                  // hintStyle can be used for the styling of the hintText,
                  // filledColor:
                  //errorText:null, used for error message display
                  //filled:true
                  prefixIcon: Icon(Icons.lock, color: AccentColor,),
                  suffixIcon:IconButton(
                    icon: Icon(Icons.warning_rounded,color: AccentColor,),
                    onPressed: (){
                      setState((){
                        check_handle_password();
                      });
                    },
                  ) ,
                ),
                keyboardType: TextInputType.emailAddress,
                obscureText: handlePassword,
                maxLength: 60,
                maxLines: 1,
                controller: _inputEmailOTP,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("password cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid password ");
                  }
                },
                onSaved: (value) {
                  _inputEmailOTP.text = value!;
                },
              ),
            ),
          ),




          SizedBox(height: 20,),

          Center(
            child: SizedBox(
              height: 45,
              width: 320,
              child: TextFormField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  counterText: "",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Re-Enter Paaword",
                  labelStyle: TextStyle(color: TextFillColor),
                  // border:OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AccentColor, width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AccentColor, width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  //border:OutLineInputBorder or UnderLineInputBorder or InputBorder.none
                  // hintText: can be used
                  // hintStyle can be used for the styling of the hintText,
                  // filledColor:
                  //errorText:null, used for error message display
                  //filled:true
                  prefixIcon: Icon(Icons.lock, color: AccentColor,),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.warning_rounded,color: AccentColor,),
                    onPressed: (){
                      setState((){
                        check_handle_re_entered_password();
                      });
                    },
                  ),

                ),
                obscureText: handleReEnteredPassword,
                keyboardType: TextInputType.text,
                maxLength: 8,
                maxLines: 1,
                controller: _inputMobileNumberOTP,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Passwords don't match.");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter matching passwords.");
                  }
                },
                onSaved: (value) {
                  _inputMobileNumberOTP.text = value!;
                },
              ),
            ),
          ),


          SizedBox(height: 30,),

          Center(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),
              minWidth: 230.0,
              height: 47,
              color: AccentColor,
              child: new Text('Submit',
                  style: new TextStyle(fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                // setState(() {
                //   _isNeedHelp = true;
                // });
              },
            ),
          ),


          SizedBox(height: 30,),

          GestureDetector(
            child: Center(
              child: Text(
                "Having Issues?",
                style: TextStyle(
                    color:AccentColor,
                    fontSize:16),
              ),
            ),
            onTap: (){


              //TODO

            },
          ),




        ],
      ),
    );
  }
}
