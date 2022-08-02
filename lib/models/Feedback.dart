import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Tran Dang Hai",
    review: review,
    userPic: "assets/images/people.png",
    color: Colors.blue,
  ),
  Feedback(
    id: 2,
    name: "Tran Duc Giang",
    review: review,
    userPic: "assets/images/people.png",
    color: Colors.red,
  ),
  Feedback(
    id: 3,
    name: "Luu Van Hung",
    review: review,
    userPic: "assets/images/people.png",
    color: Colors.grey,
  ),
];

String review =
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';
