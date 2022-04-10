class Users {
  String? id;
  String? lastname;
  String? username;
  String? email;
  String? password;
  String? gender;
  String? image;
  String? age;
  String? token;
  bool? isonlin;
  String? lastseen;
  String? location;
  Users(
      {this.id,
      this.username,
      this.lastname,
      this.email,
      this.password,
        this.image,
      this.gender,
      this.age,
      this.token,
      this.isonlin,
      this.lastseen,
      this.location});

  toJson() => <String, dynamic>{
        "username": this.username,
        "lastname": this.lastname,
        "email": this.email,
        "image": this.image,
        "gender": this.gender,
        "age": this.age,
        "token": this.token
      } as Map;
}
