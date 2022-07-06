import 'package:flutter/material.dart';
import 'enter_otp_page.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';

class ForgotPasswordOTP extends StatefulWidget {
  const ForgotPasswordOTP({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordOTP> createState() => _ForgotPasswordOTPState();
}

class _ForgotPasswordOTPState extends State<ForgotPasswordOTP> {


  TextEditingController _inputEmail = new TextEditingController();
  TextEditingController _inputMobileNumber = new TextEditingController();



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
                  labelText: "Enter Email.",
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
                  prefixIcon: Icon(Icons.mail, color: AccentColor,),
                  suffixIcon: Icon(Icons.warning_rounded,color: AccentColor,), ),
                keyboardType: TextInputType.emailAddress,
                //obsecureText: true or false for password visibility
                maxLength: 60,
                maxLines: 1,
                controller: _inputEmail,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Email cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Email");
                  }
                },
                onSaved: (value) {
                  _inputEmail.text = value!;
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
                  labelText: "Enter Mobile Number.",
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
                  prefixIcon: Icon(Icons.phone_android, color: AccentColor,),
                  suffixIcon: Icon(Icons.warning_rounded,color: AccentColor,),
                ),
                obscureText: false,
                keyboardType: TextInputType.number,
                maxLength: 60,
                maxLines: 1,
                controller: _inputMobileNumber,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Mobile Number cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Mobile Number");
                  }
                },
                onSaved: (value) {
                  _inputMobileNumber.text = value!;
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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterOTPPage()));
              },
            ),
          ),

        ],
      ),
    );
  }
}
