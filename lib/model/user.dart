class User {
  User(
    this.firstName,
    this.lastName,
    this.email, {
    this.pictureUrl,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String? pictureUrl;

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      map['firstName'],
      map['lastName'],
      map['email'],
      pictureUrl: map['pictureURL'],
    );
  }
}
