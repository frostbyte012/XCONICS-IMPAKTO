import 'package:flutter/material.dart';
import 'new_password_generation_page.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';


class EnterOTPPage extends StatefulWidget {
  const EnterOTPPage({Key? key}) : super(key: key);

  @override
  State<EnterOTPPage> createState() => _EnterOTPPageState();
}

class _EnterOTPPageState extends State<EnterOTPPage> {


  TextEditingController _inputEmailOTP = new TextEditingController();
  TextEditingController _inputMobileNumberOTP = new TextEditingController();

  bool handleEmailOTP=true;
  bool handleMobileNumberOTP=true;

  void check_handle_email_OTP(){
    handleEmailOTP=handleEmailOTP==true?false:true;
  }

  void check_handle_MobileNumber_OTP(){
    handleMobileNumberOTP=handleMobileNumberOTP==true?false:true;
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
                  labelText: "Enter OTP sent to Email.",
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
                  suffixIcon:IconButton(
                    icon: Icon(Icons.warning_rounded,color: AccentColor,),
                    onPressed: (){
                      setState((){
                        check_handle_email_OTP();
                      });
                    },
                  ) ,
                ),
                keyboardType: TextInputType.emailAddress,
                obscureText: handleEmailOTP,
                maxLength: 60,
                maxLines: 1,
                controller: _inputEmailOTP,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Email OTP cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Email OTP ");
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
                  labelText: "Enter OTP sent to Mobile",
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
                        check_handle_MobileNumber_OTP();
                      });
                    },
                  ),

                ),
                obscureText: handleMobileNumberOTP,
                keyboardType: TextInputType.text,
                maxLength: 8,
                maxLines: 1,
                controller: _inputMobileNumberOTP,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Monile Number OTP cannot be empty.");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Mobile Number OTP.");
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


                Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPasswordGenerationpage()));


              },
            ),
          ),


          SizedBox(height: 30,),

          GestureDetector(
            child: Center(
              child: Text(
                "Resend OTP ?",
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
