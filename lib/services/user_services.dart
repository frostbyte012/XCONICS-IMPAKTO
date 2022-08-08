import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Models/user_model.dart';

class UserServices{

  UserServices();


  final _auth=FirebaseAuth.instance;

  void SignIn(String email,String password,var navID,var _formkey,BuildContext context) async
  {
    try{


      if(_formkey.currentState.validate())
      {

        await _auth.signInWithEmailAndPassword(email: email, password: password)
        .then((uid) => {
          Fluttertoast.showToast(msg: "Login Successful"),
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => navID)),
        }).catchError((e){
          Fluttertoast.showToast(msg: e.message);
        });


      }

    }
        catch(e){
         print(e);
        }

  }


  void Registration(
      String email,
      String password,
      var _formKey,
      var navID,
      BuildContext context,
      String firstname,
      String lastname,
      String username,
      String phonenumber,
      String DOB,

      ) async
  {

    if(_formKey.currentState.validate()){

      await _auth.createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {
        postDetailsToFirestore(navID, context, firstname, lastname, username, phonenumber, DOB)
      }).catchError((e){
        Fluttertoast.showToast(msg: e.message);
      });

    }



  }

  void postDetailsToFirestore(
      var navID,
      BuildContext context,
      String firstname,
      String lastname,
      String username,
      String phonenumber,
      String DOB,
      )async{

    //calling firestore and usermodel and sending value to cloud store

    FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;

    User? user=await _auth.currentUser;

    UserModel userModel=UserModel(
      uid: user!.uid,
      email:user.email!,
      firstName: firstname,
      secondName: lastname,
      userName: username,
      phoneNumber: phonenumber,
      dateOfBirth: DOB,
    );

    //putting all the values

    // userModel.uid=user!.uid;
    // userModel.email=user!.email;
    // userModel.firstName=firstname;
    // userModel.secondName=lastname;
    // userModel.userName=username;
    // userModel.phoneNumber=phonenumber;
    // userModel.dateOfBirth=DOB;


    await firebaseFirestore.collection("users").doc(user.uid).collection("details").doc("detailsofuser").set(userModel.toMap());

    Fluttertoast.showToast(msg: "Account created successfully");
    Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>navID), (route) => false);


  }



}