class UserModel {



  UserModel({
    required
    this.email,
    required
    this.firstName,
    required
    this.secondName,
    required
    this.uid,
    required
    this.dateOfBirth,
    required
    this.phoneNumber,
    required
    this.userName,
  });




  String uid;
  String email;
  String firstName;
  String secondName;
  String userName;
  String dateOfBirth;
  String phoneNumber;




  //Receiving data to server

  factory UserModel.fromMap(map){
    return UserModel(

      email: map["email"],
      firstName: map["firstName"],
      secondName: map["secondName"],
      uid: map["uid"],
      userName: map["userName"],
      phoneNumber: map["phoneNumber"],
      dateOfBirth: map["dateOfBirth"],

    );
  }

  //Sending data to server

  Map<String, dynamic> toMap() {
    return {

      "uid": uid,
      "email": email,
      "firstName": firstName,
      "secondName": secondName,
      "userName":userName,
      "phoneNumber":phoneNumber,
      "dateOfBirth":dateOfBirth,

    };
  }
}