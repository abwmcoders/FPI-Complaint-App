class UserObject {
  String? name;
  String? email;
  String? pass;
  String? token;
  String? accountType;
  UserObject({this.name, this.email, this.pass, this.token, this.accountType});
  //Tojson
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "pass": pass,
      "token": token,
      "account_type": accountType,
    };
  }

  //Fromjson
  factory UserObject.fromJson(Map<String, dynamic>? json) {
    return UserObject(
      name: json?['name'],
      email: json?['email'],
      pass: json?['pass'],
      token: json?['token'],
      accountType: json?['account_type'] ?? ""
    );
  }
  @override
  String toString() {
    return 'UserObject{ name: $name, email: $email, password: $pass, token: $token, account_type: $accountType}';
  }
}
