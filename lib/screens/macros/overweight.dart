import 'package:flutter/material.dart';

class OverWeightMacrosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Macros'),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/overMacro.png'),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "Protein foods",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                      'Black beans\nLima Beans\nCorn\nSalmon\nPotatoes\nBroccoli\nCauliflower\nCabbage'),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Carbohydrate foods',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                      'Lean meat\nFish\nNuts\nSeeds\nApples\nBlueberries\nStrawberries\n'),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Fat(Good) foods',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                      'Avacados\nCheese\nDark Chocolate\nWhole Eggs\nFatty Fish\nChia Seeds\nCoconuts\nYogurts'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
