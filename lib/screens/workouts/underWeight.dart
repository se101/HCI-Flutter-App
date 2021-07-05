import 'package:flutter/material.dart';

class UnderWeightWorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnderWeight Weekly Workout Plan'),
      ),
      body: Column(
        children: [
          Text(
            'DAY 1',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'assets/images/chest1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Chest'),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset('assets/images/calves1.png'),
                  ),
                  Text('Calves'),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'assets/images/triceps1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Triceps'),
                ],
              ),
              Spacer(),
            ],
          ),
          Text(
            'DAY 2',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'assets/images/back1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Back'),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'assets/images/abs1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Abs'),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'assets/images/biceps1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Biceps'),
                ],
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              Text(
                'DAY 3',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Text(
                'DAY 4',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'assets/images/shoulder1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Shoulders'),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'assets/images/thighs1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Thighs'),
                ],
              ),
              Spacer(),
            ],
          ),
          Text(
            'DAY 5',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'assets/images/cardio1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Cardio'),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'assets/images/lats1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Lats'),
                ],
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
