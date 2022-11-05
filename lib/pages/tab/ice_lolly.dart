import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../util/geral_tile.dart';

class LollyTab extends StatelessWidget {
  List lollyOnSale = [
    ["Morango", "9", Colors.pink, "assets/images/lolly_morango.png"],
    ["Abacaxi", "5", Colors.yellow, "assets/images/lolly_abacaxi.png"],
    ["Limão", "5", Colors.green, "assets/images/lolly_limao.png"],
    ["Céu Azul", "3", Colors.blue, "assets/images/lolly_ceuazul.png"],
    ["Uva", "4", Colors.purple, "assets/images/lolly_uva.png"],
    ["Chocolate", "9", Colors.brown, "assets/images/lolly_chocolate.png"],
    ["Cereja", "9", Colors.red, "assets/images/lolly_cereja.png"],
    ["Creme", "2", Colors.amber, "assets/images/lolly_creme.png"],
    ["Açaí", "8", Colors.deepPurple, "assets/images/lolly_acai.png"],
    ["Sensação", "9", Colors.brown, "assets/images/lolly_sensacao.png"],
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
