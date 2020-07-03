import 'package:flutter/material.dart';

class FrenteCartao extends StatelessWidget {
  const FrenteCartao({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 8.56 / 5.4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(109, 33, 119, 1),
        ),
        width: double.infinity,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Image.asset(
                'assets/mastercard.png',
                height: 70,
              ),
              right: 10,
              top: 10,
            ),
            Positioned(
              child: Image.asset(
                'assets/nu_logo.png',
                height: 120,
                color: Colors.white,
              ),
              left: 25,
              bottom: 10,
            ),
            Positioned(
              child: Text(
                'LUIZ E RODRIGUES',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              right: 75,
              bottom: 56,
            ),
            Positioned(
              child: Image.asset(
                'assets/chip.png',
                height: 60,
              ),
              left: 42,
              top: 75,
            ),
            Positioned(
              child: Image.asset(
                'assets/nfc.png',
                height: 26,
                color: Colors.white,
              ),
              left: 110,
              top: 90,
            ),
          ],
        ),
      ),
    );
  }
}
