class User {
  User({this.id, this.email, this.name, this.emailVerified});
  String? id;
  String? email;
  String? name;
  bool? emailVerified;
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'emailVerified': emailVerified
    };
  }

  factory User.fromJson(Map<String, dynamic> user) {
    return User(
      id: user['id'] as String,
      name: user['name'] as String,
      email: user['email'] as String,
      emailVerified: user['emailVerified'] as bool,
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name:$name, email: $email)';
  }
}
