class User {
  String? id;
  String? email;
  String? password;
  String? name;

  User({
    this.id,
    this.email,
    this.password,
    this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['_id'],
      email: json['email'],
      name: json['name'],
    );
  }
}
