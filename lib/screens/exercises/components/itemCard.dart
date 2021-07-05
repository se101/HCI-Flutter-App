import 'package:flutter/material.dart';
import 'package:orbitFit1/models/exercises.dart';

class ItemCard extends StatelessWidget {
  final Exercises exercise;
  final Function press;
  const ItemCard({
    Key key,
    this.exercise,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: exercise.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${exercise.id}",
                child: Image.asset(exercise.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              exercise.title,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
