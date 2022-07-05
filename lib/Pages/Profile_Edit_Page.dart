import 'package:flutter/material.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';



class ProfileEditPage extends StatefulWidget {

  const ProfileEditPage({
    required this.uid,
  });

  final String uid;

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {


  TextEditingController _inputvalueUserName = new TextEditingController();
  TextEditingController _inputvalueEmail = new TextEditingController();
  TextEditingController _inputvalueDOB = new TextEditingController();
  TextEditingController _inputvalueContactNumber = new TextEditingController();
  TextEditingController _inputvalueWeight = new TextEditingController();
  TextEditingController _inputvalueHeight = new TextEditingController();
  TextEditingController _inputvalueGender = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        elevation: 0.1,
        backgroundColor:AccentColor,
        title:Text('Profile edit'),
      ),

      drawer: ListBody(
      ),

      body:ListView(
        children: [
          Divider(),

          Padding(
            padding: EdgeInsets.fromLTRB(10,10,10,10),
            child:Text("User Name:"),),

          Padding(
            padding: EdgeInsets.fromLTRB(5,5,10,5),
            child: Container(
              decoration:BoxDecoration(
                color:Colors.black12,
                border:Border.all(color: AccentColor),
                borderRadius:BorderRadius.circular(10.0),
              ),
              height:60,
              width: 90,
              child:Padding(
                padding:EdgeInsets.fromLTRB(5,0,0,0),
                child: TextFormField(

                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Enter User Name.",
                    labelStyle:TextStyle(color:AccentColor),
                    border:InputBorder.none,
                    //border:OutLineInputBorder or UnderLineInputBorder or InputBorder.none
                    // hintText: can be used
                    // hintStyle can be used for the styling of the hintText,
                    //filledColor:
                    //errorText:null, used for error message display
                    //filled:true
                    // prefixIcon: For Icons before text can hold any widget including the buttons as well,
                    // suffixIcon: For Icons after text can hold any widget including the buttons as well,
                  ),
                  // keyboardType: TextInputType.emailAddress can be used,
                  //obsecureText: true or false for password visibility
                  maxLength:10,
                  maxLines:1,
                  controller: _inputvalueUserName,
                  validator: (value) {
                    RegExp regex = new RegExp(r'^.{1,}$');
                    if (value!.isEmpty) {
                      return ("User Name cannot be empty");
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Enter Valid User Name");
                    }
                  },
                  onSaved: (value){
                    _inputvalueUserName.text=value!;
                  },
                ),
              ),
            ),
          ),


          Divider(),

          Padding(
            padding: EdgeInsets.fromLTRB(10,10,10,10),
            child:Text("Email:"),),

          Padding(
            padding: EdgeInsets.fromLTRB(5,5,10,5),
            child: Container(
              decoration:BoxDecoration(
                color:Colors.black12,
                border:Border.all(color: AccentColor),
                borderRadius:BorderRadius.circular(10.0),
              ),
              height:60,
              width: 90,
              child:Padding(
                padding:EdgeInsets.fromLTRB(5,0,0,0),
                child: TextFormField(

                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Enter Email.",
                    labelStyle:TextStyle(color:AccentColor),
                    border:InputBorder.none,
                    //border:OutLineInputBorder or UnderLineInputBorder or InputBorder.none
                    // hintText: can be used
                    // hintStyle can be used for the styling of the hintText,
                    //filledColor:
                    //errorText:null, used for error message display
                    //filled:true
                    // prefixIcon: For Icons before text can hold any widget including the buttons as well,
                    // suffixIcon: For Icons after text can hold any widget including the buttons as well,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  //obsecureText: true or false for password visibility
                  maxLength:30,
                  maxLines:1,
                  controller: _inputvalueEmail,
                  validator: (value){
                    if(value!.isEmpty){
                      return ("Please enter your email");
                    }
                    if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)){
                      return ("Please Enter a valid email");
                    }

                    return null;
                  },
                  onSaved: (value){
                    _inputvalueEmail.text=value!;
                  },
                ),
              ),
            ),
          ),

          Divider(),

          Padding(
            padding: EdgeInsets.fromLTRB(10,10,10,10),
            child:Text("Date of Birth:"),),

          Padding(
            padding: EdgeInsets.fromLTRB(5,5,10,5),
            child: Container(
              decoration:BoxDecoration(
                color:Colors.black12,
                border:Border.all(color: AccentColor),
                borderRadius:BorderRadius.circular(10.0),
              ),
              height:60,
              width: 90,
              child:Padding(
                padding:EdgeInsets.fromLTRB(5,0,0,0),
                child: TextFormField(

                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Enter Date Of Birth.",
                    labelStyle:TextStyle(color:AccentColor),
                    border:InputBorder.none,
                    //border:OutLineInputBorder or UnderLineInputBorder or InputBorder.none
                    // hintText: can be used
                    // hintStyle can be used for the styling of the hintText,
                    //filledColor:
                    //errorText:null, used for error message display
                    //filled:true
                    // prefixIcon: For Icons before text can hold any widget including the buttons as well,
                    // suffixIcon: For Icons after text can hold any widget including the buttons as well,
                  ),
                  keyboardType: TextInputType.datetime,
                  //obsecureText: true or false for password visibility
                  maxLength:10,
                  maxLines:1,
                  controller: _inputvalueDOB,
                  validator: (value) {
                    RegExp regex = new RegExp(r'^.{1,}$');
                    if (value!.isEmpty) {
                      return ("DOB cannot be empty");
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Enter Valid DOB");
                    }
                  },
                  onSaved: (value){
                    _inputvalueDOB.text=value!;
                  },
                ),
              ),
            ),
          ),


          Divider(),

          Padding(
            padding: EdgeInsets.fromLTRB(10,10,10,10),
            child:Text("Weight:"),),

          Padding(
            padding: EdgeInsets.fromLTRB(5,5,10,5),
            child: Container(
              decoration:BoxDecoration(
                color:Colors.black12,
                border:Border.all(color: AccentColor),
                borderRadius:BorderRadius.circular(10.0),
              ),
              height:60,
              width: 90,
              child:Padding(
                padding:EdgeInsets.fromLTRB(5,0,0,0),
                child: TextFormField(

                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Enter Weight in KG.",
                    labelStyle:TextStyle(color:AccentColor),
                    border:InputBorder.none,
                    //border:OutLineInputBorder or UnderLineInputBorder or InputBorder.none
                    // hintText: can be used
                    // hintStyle can be used for the styling of the hintText,
                    //filledColor:
                    //errorText:null, used for error message display
                    //filled:true
                    // prefixIcon: For Icons before text can hold any widget including the buttons as well,
                    // suffixIcon: For Icons after text can hold any widget including the buttons as well,
                  ),
                  keyboardType: TextInputType.number,
                  //obsecureText: true or false for password visibility
                  maxLength:10,
                  maxLines:1,
                  controller: _inputvalueWeight,
                  validator: (value) {
                    RegExp regex = new RegExp(r'^.{3,}$');
                    if (value!.isEmpty) {
                      return ("Weight cannot be empty");
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Enter Valid Weight");
                    }
                  },
                  onSaved: (value){
                    _inputvalueWeight.text=value!;
                  },
                ),
              ),
            ),
          ),



          Divider(),



          Padding(
            padding: EdgeInsets.fromLTRB(10,10,10,10),
            child:Text("Height:"),),

          Padding(
            padding: EdgeInsets.fromLTRB(5,5,10,5),
            child: Container(
              decoration:BoxDecoration(
                color:Colors.black12,
                border:Border.all(color: AccentColor),
                borderRadius:BorderRadius.circular(10.0),
              ),
              height:60,
              width: 90,
              child:Padding(
                padding:EdgeInsets.fromLTRB(5,0,0,0),
                child: TextFormField(

                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Enter Height in ft.",
                    labelStyle:TextStyle(color:AccentColor),
                    border:InputBorder.none,
                    //border:OutLineInputBorder or UnderLineInputBorder or InputBorder.none
                    // hintText: can be used
                    // hintStyle can be used for the styling of the hintText,
                    //filledColor:
                    //errorText:null, used for error message display
                    //filled:true
                    // prefixIcon: For Icons before text can hold any widget including the buttons as well,
                    // suffixIcon: For Icons after text can hold any widget including the buttons as well,
                  ),
                  keyboardType: TextInputType.number,
                  //obsecureText: true or false for password visibility
                  maxLength:10,
                  maxLines:1,
                  controller: _inputvalueHeight,
                  validator: (value) {
                    RegExp regex = new RegExp(r'^.{3,}$');
                    if (value!.isEmpty) {
                      return ("Weight cannot be empty");
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Enter Valid Weight");
                    }
                  },
                  onSaved: (value){
                    _inputvalueHeight.text=value!;
                  },
                ),
              ),
            ),
          ),




          Divider(),




          Padding(
            padding: EdgeInsets.fromLTRB(10,10,10,10),
            child:Text("Gender"),),

          Padding(
            padding: EdgeInsets.fromLTRB(5,5,10,5),
            child: Container(
              decoration:BoxDecoration(
                color:Colors.black12,
                border:Border.all(color: AccentColor),
                borderRadius:BorderRadius.circular(10.0),
              ),
              height:60,
              width: 90,
              child:Padding(
                padding:EdgeInsets.fromLTRB(5,0,0,0),
                child: TextFormField(

                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Enter Your Gender [male/female/trans].",
                    labelStyle:TextStyle(color:AccentColor),
                    border:InputBorder.none,
                    //border:OutLineInputBorder or UnderLineInputBorder or InputBorder.none
                    // hintText: can be used
                    // hintStyle can be used for the styling of the hintText,
                    //filledColor:
                    //errorText:null, used for error message display
                    //filled:true
                    // prefixIcon: For Icons before text can hold any widget including the buttons as well,
                    // suffixIcon: For Icons after text can hold any widget including the buttons as well,
                  ),
                  // keyboardType: TextInputType.emailAddress can be used,
                  //obsecureText: true or false for password visibility
                  maxLength:10,
                  maxLines:1,
                  controller: _inputvalueGender,
                  validator: (value) {
                    RegExp regex = new RegExp(r'^.{1,}$');
                    if (value!.isEmpty) {
                      return ("Gender cannot be empty");
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Enter Valid Gender");
                    }
                  },
                  onSaved: (value){
                    _inputvalueGender.text=value!;
                  },
                ),
              ),
            ),
          ),



        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AccentColor,
        child:Icon(Icons.save),
        onPressed: (){},
      ),
    );
  }
}
