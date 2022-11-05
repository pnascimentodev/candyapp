import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../util/geral_tile.dart';

class IceCreamTab extends StatelessWidget {
  List iceCreamOnSale = [
    ["Abacaxi", "5", Colors.yellow, "assets/images/ice_abacaxi.png"],
    ["Chocolate", "9", Colors.brown, "assets/images/ice_chocolate.png"],
    ["Céu Azul", "3", Colors.blue, "assets/images/ice_ceuazul.png"],
    ["Uva", "4", Colors.purple, "assets/images/ice_uva.png"],
    ["Cereja", "9", Colors.red, "assets/images/ice_cereja.png"],
    ["Creme", "2", Colors.amber, "assets/images/ice_creme.png"],
    ["Limão", "5", Colors.green, "assets/images/ice_limao.png"],
    ["Morango", "9", Colors.pink, "assets/images/ice_morango.png"],
    ["Açaí", "8", Colors.deepPurple, "assets/images/ice_acai.png"],
    ["Sensação", "9", Colors.brown, "assets/images/ice_sensacao.png"],
    ["Menta", "6", Colors.lime, "assets/images/ice_menta.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: iceCreamOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return GeralTile(
          flavor: iceCreamOnSale[index][0],
          price: iceCreamOnSale[index][1],
          color: iceCreamOnSale[index][2],
          imageName: iceCreamOnSale[index][3],
        );
      },
    );
  }
}
