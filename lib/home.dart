import 'package:clone_cartao_nubank/atras.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import 'frente.dart';

class ImagemNubank extends StatefulWidget {
  @override
  _ImagemNubankState createState() => _ImagemNubankState();
}

class _ImagemNubankState extends State<ImagemNubank> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(109, 33, 119, 1),
          title: Text('Cartão do Nubank'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.credit_card, color: Colors.white),
              onPressed: null,
            )
          ],
        ),
        backgroundColor: Color.fromRGBO(153, 51, 153, .5),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: FrenteCartao(),
              back: Container(
                child: AtrasCartao(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
