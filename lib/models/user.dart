class User {
  final String uid;
  String email;
  String name;
  User({this.uid, this.email, this.name});
  factory User.fromMap(Map data) {
    return User(
      uid: data['uid'] ?? '',
      email: data['email'] ?? '',
      name: data['name'] ?? '',
    );
  }
  Map<String, dynamic> toJson() => {"uid": uid, "email": email, "name": name};
}

class UserModel {}
