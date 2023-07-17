class User {
  User({this.id, this.email, this.name});
  String? id;
  String? email;
  String? name;

  Map<String, String?> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
    };
  }

  factory User.fromJson(Map<String, String> user) {
    return User(
      id: user['id'],
      name: user['name'],
      email: user['email'],
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name:$name, email: $email)';
  }
}
