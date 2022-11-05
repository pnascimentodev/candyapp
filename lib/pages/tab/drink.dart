import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../util/geral_tile.dart';

class DrinkTab extends StatelessWidget {
  List lollyOnSale = [
    ["Água", "3", Colors.blue, "assets/images/agua.png"],
    ["Guaraná", "5", Colors.brown, "assets/images/antartica.png"],
    ["Coca Cola", "7", Colors.red, "assets/images/coca.png"],
    ["Fanta Laranja", "6", Colors.orange, "assets/images/fanta.png"],
    ["Fanta Uva", "5", Colors.purple, "assets/images/uva.png"],
    ["Sprit", "6", Colors.green, "assets/images/soda.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: lollyOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return GeralTile(
          flavor: lollyOnSale[index][0],
          price: lollyOnSale[index][1],
          color: lollyOnSale[index][2],
          imageName: lollyOnSale[index][3],
        );
      },
    );
  }
}
