class UserModel {



  String uid;
  String email;
  String firstName;
  String secondName;
  String userName;
  String dateOfBirth;
  String phoneNumber;
  String leftMac;
  String rightMac;



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
    required
    this.leftMac,
    required
    this.rightMac,
  });








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
      leftMac: map["leftMac"],
      rightMac: map["rightMac"],
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
      "leftMac":leftMac,
      "rightMac":rightMac,

    };
  }
}