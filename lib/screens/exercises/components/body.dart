import 'package:flutter/material.dart';
import 'package:orbitFit1/models/exercises.dart';
import 'package:orbitFit1/screens/cardio/cardio.dart';

import 'itemCard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: exercises.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 30,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) => ItemCard(
                exercise: exercises[index],
                press: () {
                  if (index == 5) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CardioScreen()));
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
