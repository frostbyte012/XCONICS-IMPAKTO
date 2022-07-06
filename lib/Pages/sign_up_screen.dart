import 'package:flutter/material.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  TextEditingController _inputUsername = new TextEditingController();
  TextEditingController _inputEmail = new TextEditingController();
  TextEditingController _inputMobileNumber = new TextEditingController();
  TextEditingController _inputDOB = new TextEditingController();
  TextEditingController _inputPassword = new TextEditingController();
  TextEditingController _inputRePassword = new TextEditingController();

  bool handle_password=true;
  bool handle_re_enter_password=true;


  void change_handle_password()
  {
    handle_password=handle_password==true?false:true;
  }

  void change_handle_re_enter_password()
  {
    handle_re_enter_password=handle_re_enter_password==true?false:true;
  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(

        children: [


          Image.asset("images/logo_display.png", fit: BoxFit.fill,),

          SizedBox(height: 10,),

          Center(
            child: SizedBox(
              height: 45,
              width: 320,
              child: TextFormField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Enter Username.",
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
                  counterText: "",
                  prefixIcon: Icon(Icons.person, color: AccentColor,),
                  suffixIcon:Icon(Icons.check,color: AccentColor,),
                ),
                keyboardType: TextInputType.text,
                //obsecureText: true or false for password visibility
                maxLength: 60,
                maxLines: 1,
                controller: _inputUsername,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("User name cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid User name");
                  }
                },
                onSaved: (value) {
                  _inputUsername.text = value!;
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
                  suffixIcon:Icon(Icons.check,color: AccentColor,),
                ),
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
                  labelText: "Enter Mobile number.",
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
                  suffixIcon:Icon(Icons.check,color: AccentColor,),
                ),
                keyboardType: TextInputType.number,
                //obsecureText: true or false for password visibility
                maxLength: 60,
                maxLines: 1,
                controller: _inputMobileNumber,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Mobile Number cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Mobile Number.");
                  }
                },
                onSaved: (value) {
                  _inputMobileNumber.text = value!;
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
                  labelText: "Enter Date of Birth.",
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
                  prefixIcon: Icon(Icons.edit_calendar_outlined, color: AccentColor,),
                  suffixIcon:Icon(Icons.check,color: AccentColor,),
                ),
                keyboardType: TextInputType.text,
                //obsecureText: true or false for password visibility
                maxLength: 60,
                maxLines: 1,
                controller: _inputDOB,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Date of Birth cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Date of Birth");
                  }
                },
                onSaved: (value) {
                  _inputDOB.text = value!;
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
                  labelText: "Enter Password.",
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
                    icon:Icon(Icons.warning,color: AccentColor,),
                    onPressed: (){


                      setState((){
                        change_handle_password();
                      });


                    },),

                ),
                obscureText: handle_password,
                keyboardType: TextInputType.text,
                maxLength: 60,
                maxLines: 1,
                controller: _inputPassword,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Password cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Password");
                  }
                },
                onSaved: (value) {
                  _inputPassword.text = value!;
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
                  labelText: "Re-enter Password.",
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
                    icon:Icon(Icons.warning,color: AccentColor,),
                    onPressed: (){


                      setState((){
                        change_handle_re_enter_password();
                      });


                    },),

                 ),
                obscureText: handle_re_enter_password,
                keyboardType: TextInputType.text,
                maxLength: 60,
                maxLines: 1,
                controller: _inputRePassword,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Password cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Password");
                  }
                },
                onSaved: (value) {
                  _inputRePassword.text = value!;
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
              child: new Text('Register',
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

          SizedBox(height:10,),

        ],
      ),
    );
  }
}
