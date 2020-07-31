import 'package:clone_cartao_nubank/verso.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'frente.dart';

class ImagemNubank extends StatefulWidget {
  @override
  _ImagemNubankState createState() => _ImagemNubankState();
}

class _ImagemNubankState extends State<ImagemNubank> {
  var nome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        dragStartBehavior: DragStartBehavior.start,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: 500),
          child: Column(
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
      ),
    );
  }
}
