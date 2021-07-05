import 'package:flutter/material.dart';

class Exercises {
  final String image, title, description;
  final int size, id;
  final Color color;
  Exercises({
    this.id,
    this.image,
    this.title,
    this.description,
    this.size,
    this.color,
  });
}

List<Exercises> exercises = [
  Exercises(
      id: 1,
      title: "Chest",
      size: 12,
      description: "dummyText",
      image: "assets/images/chest1.png",
      color: Colors.white),
  Exercises(
      id: 2,
      title: "Abs",
      size: 12,
      description: "dummyText",
      image: "assets/images/abs1.png",
      color: Colors.white),
  Exercises(
      id: 3,
      title: "Back",
      size: 12,
      description: "dummyText",
      image: "assets/images/back1.png",
      color: Colors.white),
  Exercises(
      id: 4,
      title: "Biceps",
      size: 12,
      description: "dummyText",
      image: "assets/images/biceps1.png",
      color: Colors.white),
  Exercises(
      id: 5,
      title: "Calves",
      size: 12,
      description: "dummyText",
      image: "assets/images/calves1.png",
      color: Colors.white),
  Exercises(
      id: 6,
      title: "Cardio",
      size: 12,
      description: "dummyText",
      image: "assets/images/cardio1.png",
      color: Colors.white),
  Exercises(
      id: 7,
      title: "Lats",
      size: 12,
      description: "dummyText",
      image: "assets/images/lats1.png",
      color: Colors.white),
  Exercises(
      id: 8,
      title: "Shoulders",
      size: 12,
      description: "dummyText",
      image: "assets/images/shoulder1.png",
      color: Colors.white),
  Exercises(
      id: 9,
      title: "Thighs",
      size: 12,
      description: "dummyText",
      image: "assets/images/thighs1.png",
      color: Colors.white),
  Exercises(
      id: 10,
      title: "Triceps",
      size: 12,
      description: "dummyText",
      image: "assets/images/triceps1.png",
      color: Colors.white),
];
