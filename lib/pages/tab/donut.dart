import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../util/geral_tile.dart';

class DonutTab extends StatelessWidget {
  List donutOnSale = [
    ["Donut Abacaxi", "10", Colors.yellow, "assets/images/donut_abacaxi.png"],
    ["Donut Morango", "15", Colors.pink, "assets/images/donut_morango.png"],
    ["Donut Cereja", "13", Colors.red, "assets/images/donut_cereja.png"],
    ["Donut Creme", "12", Colors.amber, "assets/images/donut_creme.png"],
    ["Donut Limão", "11", Colors.green, "assets/images/donut_limão.png"],
    ["Donut Céu Azul", "11", Colors.blue, "assets/images/donut_azul.png"],
    ["Donut Uva", "10", Colors.purple, "assets/images/donut_uva.png"],
    ["Donut Chocolat", "15", Colors.brown, "assets/images/donut_chocolate.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return GeralTile(
          flavor: donutOnSale[index][0],
          price: donutOnSale[index][1],
          color: donutOnSale[index][2],
          imageName: donutOnSale[index][3],
        );
      },
    );
  }
}
