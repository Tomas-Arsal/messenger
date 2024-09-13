import 'dart:convert';
import 'dart:core';

class SocialUserModel {
  String name;
  String email;
  String phone;
  String uId;
  String image;
  String cover;
  String bio;
  bool emailVerified;

  SocialUserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.uId,
    required this.image,
    required this.cover,
    required this.bio,
    required this.emailVerified,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'uId': uId,
      'image': image,
      'cover': cover,
      'bio': bio,
      'emailVerified': emailVerified,
    };
  }

  factory SocialUserModel.fromMap(Map<String, dynamic>? map) {
    return SocialUserModel(
      name: map!['name'],
      email: map['email'],
      phone: map['phone'],
      uId: map['uId'],
      image: map['image'],
      cover: map['cover'],
      bio: map['bio'],
      emailVerified: map['emailVerified'],
    );
  }

  // String toJson() => json.encode(toMap());
  //
  // factory SocialUserModel.fromJson(String source) =>
  //     SocialUserModel.fromMap(json.decode(source));
}